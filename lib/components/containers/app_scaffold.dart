import 'package:flutter/material.dart';
import 'package:pocket/components/ui/gradient/bottom_scaffold_gradient_background.dart';
import 'package:pocket/components/ui/gradient/top_scafold_gradient_backround.dart';
import 'dart:math' as math;
import 'dart:math' as math;

import 'package:pocket/utils/enums/scaffold_gradient_alignment.dart';

class AppScaffold extends StatelessWidget {
  final ScaffoldGradientAlignment? scafoldGradient;
  final Widget child;

  const AppScaffold.gradientTop({super.key, required this.child}): scafoldGradient = ScaffoldGradientAlignment.top;

  const AppScaffold.gradientBottom({super.key, required this.child}): scafoldGradient = ScaffoldGradientAlignment.bottom;

  const AppScaffold({super.key, this.scafoldGradient = ScaffoldGradientAlignment.none, required this.child });

  @override
  Widget build(BuildContext context) {
     switch (scafoldGradient) {
       case ScaffoldGradientAlignment.bottom:
         return BottomScaffoldGradientBackground(child: child);
        case ScaffoldGradientAlignment.top:
        return TopScaffoldGradientBackground(child: child);
       default:
       return Scaffold(body: child);
     }
  }
}
