import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'dart:math' as math;

import 'package:flutter_svg/svg.dart';

class BottomScaffoldGradientBackground extends StatelessWidget {
  
  final Widget child;
  const BottomScaffoldGradientBackground({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    // Figma Flutter Generator Group99Widget - GROUP
    return Container(
        width: 674.0980224609375,
        height: 403.5917663574219,
        child: Stack(children: <Widget>[
          Positioned(
              top: 72.69287109375,
              left: 329,
              child: Transform.rotate(
                angle: 16.325867566529972 * (math.pi / 180),
                child: Container(
                    width: 258.60137939453125,
                    height: 344.8018493652344,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment(6.123234262925839e-17, 1),
                          end: Alignment(-1, 6.123234262925839e-17),
                          colors: [
                            Color.fromRGBO(117, 47, 246, 1),
                            Color.fromRGBO(158, 91, 240, 1)
                          ]),
                      borderRadius: BorderRadius.all(Radius.elliptical(
                          258.60137939453125, 344.8018493652344)),
                    )),
              )),
          Positioned(
              top: 87.703857421875,
              left: 0,
              child: Transform.rotate(
                angle: 0.320857255829631 * (math.pi / 180),
                child: SvgPicture.asset('assets/images/ellipse17.svg',
                    semanticsLabel: 'ellipse17'),
              )),
              child
        ]));
  }
}
