import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:pocket/components/containers/app_scaffold.dart';
import 'package:pocket/router/router.dart';
import 'package:pocket/store/place_store.dart';
import 'package:pocket/store/user_store.dart';
@RoutePage()
class MenuComponentPage extends StatelessWidget {
  final userStore = GetIt.I.get<UserStore>();
  @override
  Widget build(BuildContext context) {
    return AppScaffold.gradientTop(
      child:Container(
        // decoration: BoxDecoration(
        //   gradient: LinearGradient(
        //     begin: Alignment.topCenter,
        //     end: Alignment.bottomCenter,
        //     colors: [Colors.blue, Color(0xFFE6E6FA)],
        //   ),
        // ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                _buildHeader(),
                SizedBox(height: 20),
                _buildEventsSuggestions(context),
                SizedBox(height: 20),
                // _buildSpecialOffers(),
                // SizedBox(height: 20),
                _buildProgressBar(),
                // SizedBox(height: 20),
                // _buildCompletedEvents(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Row(
      children: [
        // Icon(Icons.arrow_back, color: Colors.black),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundColor: Colors.pink[100],
                child: Icon(Icons.person, color: Colors.purple),
              ),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Алексей', style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('email@mail.ru', style: TextStyle(color: Colors.grey)),
                ],
              ),
            ],
          ),
        ),
        Text('4.5★', style: TextStyle(fontWeight: FontWeight.bold)),
      ],
    );
  }

  Widget _buildEventsSuggestions(BuildContext ctx) {
    return Row(
      children: [
        Expanded(
          child: _buildGradientCard(ctx,'Мои\nСобытия', null, Color.fromRGBO(117, 47, 246, 1), Color.fromRGBO(158, 91, 240, 1)),
        ),
        SizedBox(width: 10),
        Expanded(
          child: _buildGradientCard(ctx,'Мои\nПредложения', null, Color.fromRGBO(117, 47, 246, 1), Color.fromRGBO(158, 91, 240, 1)),
        ),
      ],
    );
  }

  Widget _buildSpecialOffers(BuildContext ctx) {
    return _buildGradientCard(ctx,'Особые\nПредложения', null, Color.fromRGBO(207, 180, 254, 1), Color.fromRGBO(158, 91, 240, 1));
  }

  Widget _buildProgressBar() {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [Color.fromRGBO(207, 180, 254, 1)!, Colors.purple[100]!]),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Пройдено за сегодня'),
          SizedBox(height: 5),
          Row(
            children: [
              Expanded(
                child: LinearProgressIndicator(
                  value: 0.725,
                  backgroundColor: Colors.white,
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.purple),
                ),
              ),
              SizedBox(width: 10),
              Icon(Icons.directions_walk, color: Colors.purple),
            ],
          ),
          SizedBox(height: 5),
          Text('7250/10000', style: TextStyle(color: Colors.white)),
        ],
      ),
    );
  }

  Widget _buildCompletedEvents() {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [Colors.blue[100]!, Colors.purple[100]!]),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Завершённые\nсобытия', style: TextStyle(fontWeight: FontWeight.bold)),
          Text('6', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
        ],
      ),
    );
  }

  Widget _buildGradientCard(BuildContext ctx, title, String? count, Color startColor, Color endColor) {
    return 
    GestureDetector(onTap: ()=>{
      AutoRouter.of(ctx).navigate(MyOffersRoute())
    },
    child: Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [startColor, endColor]),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
          SizedBox(height: 5),
          if (count != null) Text(count, style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold)),
        ],
      ),
    ));
  }
}