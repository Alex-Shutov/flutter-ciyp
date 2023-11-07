import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class LocationButton extends StatelessWidget {
          @override
          Widget build(BuildContext context) {
          // Figma Flutter Generator Ellipse6Widget - ELLIPSE
            return Container(
        width: 60,
        height: 60,
        child: Stack(
          children: [
            Center(child: SvgPicture.asset('assets/images/location_icon.svg'))
          ],
        ),
        decoration: BoxDecoration(
          gradient : LinearGradient(
          begin: Alignment(6.123234262925839e-17,1),
          end: Alignment(-1,6.123234262925839e-17),
          colors: [Color.fromRGBO(85, 13, 253, 1),Color.fromRGBO(158, 91, 240, 1)]
        ),
      borderRadius : BorderRadius.all(Radius.elliptical(60, 60)),
  )
      );
          }
        }
        