import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:pocket/router/router.dart';

@RoutePage()
class The2Page extends StatelessWidget {
  build(BuildContext ctx) => Column(
        children: [
          Text('Page2'),
          ElevatedButton(
            child: Text('Page1'),
            onPressed: () => ctx.navigateTo(The1Route()),
          ),
          ElevatedButton(
            child: Text('Page3'),
            onPressed: () => ctx.navigateTo(The3Route()),
          ),
          ElevatedButton(
            child: Text('Page4'),
            onPressed: () => ctx.navigateTo(The4Route()),
          ),
        ],
      );
}