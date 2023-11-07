import 'package:flutter/material.dart';
import 'package:pocket/components/buttons/buttons/select_button.dart';
import 'package:pocket/components/cards/bottom_slide_card.dart';
import 'package:pocket/components/inputs/search_input.dart';
import 'package:pocket/theme/theme_constants.dart';
import 'package:pocket/utils/header_levels.dart';

class BottomSlideContainer extends StatelessWidget {
const BottomSlideContainer({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    var theme = Theme.of(context);
    const temp = 106.0;
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          SearchInput(),
          Container(
            padding: EdgeInsets.only(top: 16),  
            width: 550,
            height: 50,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SelectButton(buttonText: 'Рестораны'),
                 SelectButton(buttonText: 'Рестораны'),
                  SelectButton(buttonText: 'Рестораны'),
                   SelectButton(buttonText: 'Рестораны'),
                    SelectButton(buttonText: 'Рестораны'),
                     SelectButton(buttonText: 'Рестораны'),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: ListView(
              children: [
                BottomSlideCard(),
                BottomSlideCard(),
                BottomSlideCard(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}