import 'package:fluro/fluro.dart';
import 'package:web_w_kopi/page_view.dart';

var homeHandler = Handler(
    handlerFunc: (context, Map<String, dynamic> params) => LandingPageView(
          content: 'Home',
        ));

var aboutHandler = Handler(
    handlerFunc: (context, Map<String, dynamic> params) => LandingPageView(
          content: 'About',
        ));

var contactHandler = Handler(
    handlerFunc: (context, Map<String, dynamic> params) => LandingPageView(
          content: 'Contact',
        ));
