import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get_it/get_it.dart';
import 'package:pocket/pages/place_detail_Page.dart';
import 'package:pocket/router/router.dart';
import 'package:pocket/store/place_store.dart';

class PlaceInfoWidget extends StatelessWidget {
  final String image;
  final String label;
  final String description;
  final Color color;
  final String startDate;
  final String endDate;
  final String startTime;
  final String endTime;
  final String address;
  final String phone;
  final String task;

  const PlaceInfoWidget({
    required this.image,
    required this.label,
    required this.description,
    required this.color,
    required this.startDate,
    required this.endDate,
    required this.startTime,
    required this.endTime,
    required this.address,
    required this.phone,
    required this.task,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final placeStore = GetIt.I.get<PlaceStore>();

    return GestureDetector(
      onTap: () {
        placeStore.setPlaceInfo(
          imageUrl: image,
          title: label,
          description: description,
          task: task,
          startDate: startDate, // Данные из mockdata
          endDate: endDate,
          startTime:startTime,
          endTime:endTime,
          address: address,
          phoneNumber: phone
        );
        context.navigateTo(PlaceDetailRoute());
      },
      child: Container(
        width: 180,
        height: 184,
        padding: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: color.withOpacity(1),
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 10,
              offset: Offset(0, 5),
            ),
          ],
        ),
        child: Column(
          children: [
            Image.asset(image, width: 125, height: 98, fit: BoxFit.cover),
            SizedBox(height: 4.0),
            Text(
              label,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Center(
              child: Text(
                task,
                style: TextStyle(color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
