import 'package:blur/blur.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;


import 'package:pocket/theme/theme_constants.dart';
import 'package:pocket/utils/app_math.dart';

//Generated Code
class TopScaffoldGradientBackground extends StatelessWidget {
  final Widget child;

  const TopScaffoldGradientBackground({super.key, required this.child});

  @override
  Widget build(BuildContext context) {

    var angle = 148.218565986266917;

    var positionBlueElement = (top:-46.332261857115554,left:316.40339280898297);
    var alignBlueElement = (left:0.5388913750648499,right:0.47664859890937805);

    var postitionPurpleElement = (top:-174.2384669813282,left:-17.55567606026852);
    var alignPurpleElement = (left:0.2388913750648499, right:0.47664859890937805);
    
  
    // Figma Flutter Generator Group14Widget - GROUP
    return Container(
        width: 481.7781677246094,
        height: 548.9324951171875,
        child: Stack(children: <Widget>[
          Positioned(
              top: positionBlueElement.top,
              left: positionBlueElement.left,
              child: Transform.rotate(
                angle: angle * AppMath.oneDegree,
                child: Container(
                    width: 234,
                    height: 312,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment(
                              alignBlueElement.left, alignBlueElement.right),
                          end: Alignment(
                              -alignBlueElement.right, alignBlueElement.left),
                          colors: [
                            AppColors.LightBlue,
                            AppColors.Purple
                          ]),
                      borderRadius:
                          BorderRadius.all(Radius.elliptical(234, 312)),
                    )),
              )),
          Blur(
            blur:80,
            child: Positioned(
                top: postitionPurpleElement.top,
                left: postitionPurpleElement.left,
                child: Transform.rotate(
                  angle: angle * AppMath.oneDegree,
                  child: Container(
                      width: 234,
                      height: 312,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment(
                                alignPurpleElement.left, alignPurpleElement.right),
                            end: Alignment(
                                -alignPurpleElement.right, alignPurpleElement.left),
                            colors: [
                              AppColors.BlueGradient,
                              AppColors.PurpleGradient,
                            ]),
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(234, 312)),
                      )),
                )),
          ),
          child
        ]));
  }
}
