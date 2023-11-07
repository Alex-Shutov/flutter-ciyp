import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pocket/components/buttons/buttons/location_button.dart';
import 'package:pocket/components/containers/bottom_slide_container.dart';
import 'package:pocket/router/router.dart';
import 'package:pocket/theme/theme_constants.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

@RoutePage()
class The1Page extends StatefulWidget {

  @override
  State<The1Page> createState() => _The1PageState();
}

class _The1PageState extends State<The1Page> {
  final double _initFabHeight = 265.0;

  double _fabHeight = 265;

  final double _panelHeightOpen = 500;

  final double _panelHeightClosed = 195.0;

  void navigate(BuildContext ctx, PageRouteInfo<dynamic> route){
     var a = AutoRouter.of(ctx).topRoute;
              print(AutoRouter.of(ctx).routeData);
              ctx.navigateTo(route);
              // print(HomeRoute().initialChildren);
  }
  var maxHeight = 500.0;

  var minHeight = 265.0;

  var init = 265.0;

  

  build(BuildContext ctx) {
    var panelHeightClosed = _panelHeightClosed;
    return Stack(
    children: [
      Image.asset('assets/images/map.png',width: MediaQuery.of(ctx).size.width, height: MediaQuery.of(ctx).size.height,fit: BoxFit.cover,),
      Scaffold(
        
        backgroundColor: Colors.transparent,
        
        body: Stack(
          children: [
            
             
              SlidingUpPanel(
                
                maxHeight: maxHeight,
                  minHeight: minHeight,
                parallaxEnabled: true,
                parallaxOffset: .5,
                margin: EdgeInsets.only(top: 80),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
                color: AppColors.BlueGradient,
                panel: BottomSlideContainer(),
                  onPanelSlide: (double pos) => setState(() {
              _fabHeight = pos * (maxHeight - minHeight) +
                  init;
            }),
                body: Image.asset('assets/images/map.png',width: MediaQuery.of(ctx).size.width, height: MediaQuery.of(ctx).size.height,fit: BoxFit.cover,),
              ),
  
               Positioned(
                right: 20,
                bottom: _fabHeight,
                child: LocationButton()),
          
          ],
        ),
      ),
    ],
  );
  }
}