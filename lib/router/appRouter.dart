import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

extension  ExtendedAutoRouter on AutoRouter{
  
  void appNavigate({required BuildContext ctx, required PageRouteInfo<void> page, bool isChildrenForbidden=true}){
    var collection = AutoRouter.of(ctx).match(page);
    
  }
}