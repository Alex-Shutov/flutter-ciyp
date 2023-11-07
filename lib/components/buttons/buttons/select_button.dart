import 'package:flutter/material.dart';
import 'package:pocket/theme/theme_constants.dart';

class SelectButton extends StatefulWidget {
  final Color? checkedButtonColor;
  
  final double? buttonHeight;
  
  final double? buttonWidth;

  final String buttonText;  
  const SelectButton({Key? key, this.buttonHeight, this.buttonWidth, this.checkedButtonColor, required this.buttonText}) : super(key: key);

  @override
  _SelectButtonState createState() => _SelectButtonState();
}

class _SelectButtonState extends State<SelectButton> {

  var isChecked = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        setState(() {
          isChecked = !isChecked;
        });
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 8),
        child: SizedBox(
          width: widget.buttonWidth ?? 120,
              height: widget.buttonHeight ?? 30,
          child: Container(
           
              child: Center(child: Text(widget.buttonText, style: TextStyle(color: isChecked ? AppColors.Black : AppColors.White),)),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  ),
                  
                  color: isChecked ? AppColors.White : Colors.transparent,
                  border: Border.all(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    width: 1,
                  ))),
        ),
      ),
    );
  }
}
