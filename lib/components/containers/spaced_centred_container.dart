import 'package:flutter/material.dart';

class SpacedCentredContainer extends StatelessWidget {
  final _child;
const SpacedCentredContainer({super.key, required Widget child}) : _child = child;


  @override
  Widget build(BuildContext context){
    return SizedBox(
      width: MediaQuery.of(context).size.width ,
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          const SizedBox(height: 80),
          Flexible(
            child: Center(child: Container( width: MediaQuery.of(context).size.width,
             padding:const EdgeInsets.only(left: 46,right: 46,bottom: 32,top: 32), child: _child)),
          ),
        ],
      ),
    );
  }
}