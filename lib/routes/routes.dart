import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

import 'route_handlers.dart';

class Routes {
  static String home = "/";
  static String secondScreen = "/second_screen";

  static void configureRoutes(FluroRouter router) {
    router.notFoundHandler = Handler(
        handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
          print("Route not found");
          return;
        });
    router.define(home, handler: homeHandler);
    router.define(secondScreen, handler: secondScreenHandler,transitionType: TransitionType.inFromRight);
  }
}