import 'package:flutter/material.dart';
import 'package:pocket/components/containers/app_scaffold.dart';
import 'package:pocket/components/containers/spaced_centred_container.dart';

class LoginFlowContainer extends StatelessWidget {
  final List<Widget>  children;
  
  final MainAxisAlignment? mainAxisAlignment;

const LoginFlowContainer({ Key? key, required this.children, this.mainAxisAlignment }) : super(key: key);

  @override
  Widget build(BuildContext context)=> 
  AppScaffold.gradientTop(child: 
  SpacedCentredContainer(child: SingleChildScrollView(
    child: Column(
      mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.start,
      children: children,
    ),
  )));
}