import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:pocket/components/buttons/buttons/gradient_action_button.dart';
import 'package:pocket/components/buttons/buttons/gradient_asset_button.dart';
import 'package:pocket/components/containers/app_scaffold.dart';
import 'package:pocket/resources/mock_data.dart';

@RoutePage()
class MyOffersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppScaffold.gradientTop(
      child: Container(
        // decoration: BoxDecoration(
        //   gradient: LinearGradient(
        //     begin: Alignment.topCenter,
        //     end: Alignment.bottomCenter,
        //     colors: [Colors.white, Color(0xFFE6E6FA)],
        //   ),
        // ),
        child: SafeArea(
          child: Column(
            children: [
              _buildHeader(),
              Expanded(
                child: ListView(
                  padding: EdgeInsets.all(16),
                  children: [
                    _buildOfferCard(
                      mockData['restaurants']![0]['label'],
                      'Купон на чизкей',
                      mockData['restaurants']![0]['image'] as String,
                      Color.fromRGBO(169, 217,255, 1),
                    ),
                
                  
                  ],
                ),
              ),
              _buildFooter(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          SizedBox(width: 16),
          Text(
            'Мои\nСобытия',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.deepPurple,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildOfferCard(Object? title, String subtitle, String imagePath, Color color) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Padding( padding: EdgeInsets.only(left: 12.0),
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16),
              bottomLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              bottomRight: Radius.circular(16),
            ),
            child: Image.asset(
              imagePath,
              width: 100,
              height: 100,
              fit: BoxFit.fill,
            ),
          )),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title as String,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    subtitle,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[600],
                    ),
                  ),
                  SizedBox(height: 8),
                  GradientAssetButton(
                    width: 165.0,
                                    onPressed: () => {
                                      
                                    },
                                    text: 'Воспользоваться',
                                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFooter() {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(16),
      child: GradientActionButton(
              onPressed: (){
              
              },
              text: 'Проложить маршрут'),
      );
  }
}
      // child: ElevatedButton(
      //   onPressed: () {},
      //   child: Text('Проложить маршрут'),
      //   style: ElevatedButton.styleFrom(
      //     padding: EdgeInsets.symmetric(vertical: 16),
      //     shape: RoundedRectangleBorder(
      //       borderRadius: BorderRadius.circular(30),
      //     ),
      //   ),
      // )