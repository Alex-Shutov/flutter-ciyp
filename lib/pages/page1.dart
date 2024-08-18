import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:pocket/components/buttons/buttons/location_button.dart';
import 'package:pocket/components/containers/Map_Screen.dart';
import 'package:pocket/components/containers/bottom_slide_container.dart';
import 'package:pocket/router/router.dart';
import 'package:pocket/theme/theme_constants.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

@RoutePage()
class The1Page extends StatefulWidget {

  @override
  State<The1Page> createState() => _The1PageState();
}

class _The1PageState extends State<The1Page> {
  final double _initFabHeight = 265.0;

  double _fabHeight = 165;

  final double _panelHeightOpen = 500;

  final double _panelHeightClosed = 145.0;

  final GlobalKey<MapScreenState> _mapKey = GlobalKey<MapScreenState>();

  var maxHeight = 500.0;

  var minHeight = 265.0;

  var init = 165.0;

  void _goToCurrentLocation() {
    _mapKey.currentState?.goToCurrentLocation();
  }

  LatLng? _getCurrentPosition() {
    return _mapKey.currentState?.getCurrentPosition();
  }

  build(BuildContext ctx) {
    var panelHeightClosed = _panelHeightClosed;
    return Stack(
    children: [
      Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            SlidingUpPanel(
              
              maxHeight: maxHeight,
              minHeight: _panelHeightClosed,
              parallaxEnabled: true,
              parallaxOffset: .5,
              margin: EdgeInsets.only(top: 180),
              borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
              color: AppColors.BlueGradient,
              panel: BottomSlideContainer(),
              onPanelSlide: (double pos) => setState(() {
                _fabHeight = pos * (maxHeight*1.22 - minHeight) + init;
              }),
              body: MapScreen(key: _mapKey),
            ),
            Positioned(
              right: 20,
              bottom: _fabHeight ,
              child: LocationButton(onPressed: _goToCurrentLocation),
            ),
          ],
        ),
      ),
    ],
  );
  }
}
