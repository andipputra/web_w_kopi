import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:web_w_kopi/config/router/fluro_handler.dart';

class FluroRoute {
  static void configureRoutes(FluroRouter router) {
    router.notFoundHandler = Handler(
        handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      print("ROUTE WAS NOT FOUND !!!");
      return;
    });


    router.define('/home', handler: homeHandler, transitionType: TransitionType.none );
    router.define('/about', handler: aboutHandler, transitionType: TransitionType.none );
    router.define('/contact', handler: contactHandler, transitionType: TransitionType.none );
  }
}
