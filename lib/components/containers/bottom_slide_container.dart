import 'package:flutter/material.dart';
import 'package:pocket/components/buttons/buttons/select_button.dart';
import 'package:pocket/components/cards/bottom_slide_card.dart';
import 'package:pocket/components/inputs/search_input.dart';

class BottomSlideContainer extends StatelessWidget {
  const BottomSlideContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          SearchInput(),
          SizedBox(height: 16), // Добавление отступа между SearchInput и ListView
          Container(
            width: double.infinity,
            height: 50,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SelectButton(buttonText: 'Рестораны'),
                SelectButton(buttonText: 'Бары'),
                SelectButton(buttonText: 'Парки'),
              ],
            ),
          ),
          SizedBox(height: 16), // Добавление отступа между горизонтальным ListView и вертикальным ListView
          Flexible(
            child: ListView(
              padding: EdgeInsets.only(bottom: 40.0),
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
