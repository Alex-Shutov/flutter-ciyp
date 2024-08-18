import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';
import 'package:pocket/components/cards/place_info_widget.dart';
import 'package:pocket/store/app_store.dart';
import '../../resources/mock_data.dart';

class MapScreen extends StatefulWidget {
  MapScreen({Key? key}) : super(key: key);

  @override
  MapScreenState createState() => MapScreenState();
}

class MapScreenState extends State<MapScreen> {
  final appStore = GetIt.I.get<AppStore>();
  late GoogleMapController _controller;
  LatLng _initialPosition = LatLng(56.837716, 60.596828); // Default to Izhevsk
  LatLng? _currentPosition;
  double _currentZoom = 15.0;
  final Map<MarkerId, Marker> _markers = {};
  MarkerId? _selectedMarkerId;
  BitmapDescriptor? customIcon;
  Map<String, dynamic>? _selectedPlace;
  LatLng? _selectedPosition;
  double? _markerColor;
  Offset? _screenPosition;
  
  String? _currentCategory;

  @override
  void initState() {
    super.initState();
    _getUserLocation();
    _loadMarkers();
  }

  void _getUserLocation() async {
    bool serviceEnabled;
    LocationPermission permission;

    // Проверка, включены ли службы местоположения
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      // Местоположение недоступно, уведомите пользователя
      return;
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        // Разрешение на доступ к местоположению было отклонено, уведомите пользователя
        return;
      }
    }

    if (permission == LocationPermission.deniedForever) {
      // Разрешение на доступ к местоположению было отклонено навсегда, уведомите пользователя
      return;
    }

    Position position = await Geolocator.getCurrentPosition();
    setState(() {
      _currentPosition = LatLng(position.latitude, position.longitude);
      _controller.animateCamera(
        CameraUpdate.newLatLngZoom(_currentPosition!, 15.0),
      );
    });
  }

  void goToCurrentLocation() {
    if (_currentPosition != null) {
      _controller.animateCamera(
        CameraUpdate.newLatLngZoom(_currentPosition!, 15.0),
      );
    }
  }

  LatLng? getCurrentPosition() {
    return _currentPosition;
  }

  void _loadMarkers() {
    mockData.forEach((category, places) {
      for (var place in places) {
        final markerId = MarkerId(place['id'].toString());
        final color = _getMarkerColor(category);

        final marker = Marker(
          markerId: markerId,
          position: LatLng(place['lat'] as double, place['long'] as double),
          infoWindow: InfoWindow(title: place['label'] as String),
          icon: BitmapDescriptor.defaultMarkerWithHue(color),
          onTap: () => _onMarkerTapped(place, LatLng(place['lat'] as double, place['long'] as double), color,category),
        );

        _markers[markerId] = marker;
      }
    });

    setState(() {});
  }

  void _onMarkerTapped(Map<String, dynamic> place, LatLng position, double markerColor,String category) {
    setState(() {
      _selectedPlace = place;
      _selectedPosition = position;
      _markerColor = markerColor;
      _currentCategory = category;
    });
    appStore.changeColor(Colors.white);
    _updateScreenPosition();
  }

  Future<void> _updateScreenPosition() async {
    if (_controller != null && _selectedPosition != null) {
      final screenCoordinates = await _controller.getScreenCoordinate(_selectedPosition!);
      setState(() {
        _screenPosition = Offset(screenCoordinates.x.toDouble(), screenCoordinates.y.toDouble());
      });
    }
  }

  double _getMarkerColor(String category) {
    switch (category) {
      case 'restaurants':
        return BitmapDescriptor.hueBlue;
      case 'bars':
        return BitmapDescriptor.hueOrange;
      case 'parks':
        return BitmapDescriptor.hueGreen;
      default:
        return BitmapDescriptor.hueRed;
    }
  }

  Color _getCurrentColor(){
    switch(_currentCategory){
      case 'restaurants':
        return Color.fromARGB(1, 103, 90, 246);
      case 'bars':
        return Color.fromARGB(1, 40, 135, 244);
      case 'parks':
        return Color.fromARGB(1, 40, 135, 244);
      default:
        return Color.fromARGB(1, 40, 135, 244);
    }
  }

  void _onMapTapped(LatLng position) {
    setState(() {
      _selectedPlace = null;
      _selectedPosition = null;
      _markerColor = null;
      _screenPosition = null;
    });
  }

  void _onCameraMove(CameraPosition position) {
    if (_selectedPosition != null) {
      _updateScreenPosition();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          GoogleMap(
            initialCameraPosition: CameraPosition(
              target: _initialPosition,
              zoom: _currentZoom,
            ),
            onMapCreated: (GoogleMapController controller) {
              _controller = controller;
              if (_currentPosition != null) {
                _controller.animateCamera(
                  CameraUpdate.newLatLngZoom(_currentPosition!, _currentZoom),
                );
              }
            },
            myLocationEnabled: true,
            myLocationButtonEnabled: false,
            markers: Set.from(_markers.values),
            onCameraMove: _onCameraMove,
            onTap: _onMapTapped,
            zoomControlsEnabled: false,
          ),
          if (_selectedPlace != null && _screenPosition != null)
            Positioned(
              left: _screenPosition!.dx - 93, // Центрируем компонент по горизонтали
              top: _screenPosition!.dy - 195, // Размещаем компонент немного выше
              child: PlaceInfoWidget(
                task:  _selectedPlace!['task'],
                startDate: _selectedPlace!['startDate'],
                endDate: _selectedPlace!['endDate'],
                startTime: _selectedPlace!['startTime'],
                endTime: _selectedPlace!['endTime'],
                image: _selectedPlace!['image'],
                label: _selectedPlace!['label'],
                phone: _selectedPlace!['phone'],
                address: _selectedPlace!['address'],
                description: _selectedPlace!['description'],
                color: _markerColor != null ? _getCurrentColor() : Colors.white,
                
              ),
            ),
          Positioned(
            right: 16,
            top: MediaQuery.of(context).size.height / 2 - 60, // Центрирование по вертикали
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 6,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: Icon(Icons.add),
                    onPressed: () {
                      _controller.animateCamera(CameraUpdate.zoomIn());
                    },
                    color: Colors.black54,
                  ),
                  Divider(height: 1, color: Colors.black26),
                  IconButton(
                    icon: Icon(Icons.remove),
                    onPressed: () {
                      _controller.animateCamera(CameraUpdate.zoomOut());
                    },
                    color: Colors.black54,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
