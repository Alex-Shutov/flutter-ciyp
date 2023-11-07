import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:widget_mask/widget_mask.dart';


class CategoryButton extends StatelessWidget {
  final String categoryText;
  
  final SvgPicture categoryImage;

  const CategoryButton({super.key, required this.categoryText, required this.categoryImage});

  @override
  Widget build(BuildContext context) {
    // Figma Flutter Generator 1Widget - GROUP
    return Container(
        width: 141,
        height: 96.8125,
        child: Stack(children: <Widget>[
          
          Positioned(
              top: 4.8125,
              left: 5,
              child: Container(
                  width: 136,
                  height: 92,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                    color: Color.fromRGBO(167, 218, 255, 1),
                    border: Border.all(
                      color: Color.fromRGBO(167, 218, 255, 1),
                      width: 1,
                    ),
                  ))),
          Stack(
            children: [
              Container(
                  width: 136,
                  height: 92,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                    color: Color.fromRGBO(167, 218, 255, 1),
                    border: Border.all(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      width: 1,
                    ),
                  )),
                     Positioned(
          top: 0,
          left: 50,
          width: 132,
                  height: 82,
          child: //Mask holder Template
                        Container(width: 132,
                  height: 88, child: categoryImage),

                     )
            ],
          ),
         
                  // Positioned(child: ,
                  // top: 0,
                  // left: 100,),
                  
          Positioned(
              top: 64,
              left: 12,
              child: Text(
                categoryText,
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontFamily: 'Montserrat Alternates',
                    fontSize: 15,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1),
              )),
        ]));
  }
}
