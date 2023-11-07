import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:pocket/components/buttons/buttons/gradient_action_button.dart';

import '../../../router/router.dart';

class LoginButtonNext extends StatelessWidget {
  final PageRouteInfo<dynamic> route;
  
  final Function()? onPressed;

  const LoginButtonNext({Key? key, required this.route, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          GradientActionButton(
              onPressed: (){
                context.navigateTo(route);
                if(onPressed !=null) onPressed!();
              },
              text: 'Далее'),
        ],
      ),
    );
  }
}
