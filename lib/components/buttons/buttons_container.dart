import 'package:flutter/material.dart';

class ButtonsContainer extends StatelessWidget {

final List<Widget> children;
const ButtonsContainer({ Key? key, required this.children }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return SizedBox(
      width: double.infinity,
      child: Wrap(
        spacing: 32,
        runSpacing: 32,
        alignment: WrapAlignment.center,
        children: children,
    
      ),
    );
  }
}