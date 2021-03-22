import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:web_w_kopi/config/application.dart';
import 'package:web_w_kopi/config/router/fluro_router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  _MyAppState(){
    final router = FluroRouter();
    FluroRoute.configureRoutes(router);
    Application.router = router;
  }
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Worth It Coffee",
      debugShowCheckedModeBanner: false,
      initialRoute: '/home',
      onGenerateRoute: Application.router.generator,
    );
  }
}

// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.

//   final FluroRouter router;

//   MyApp({this.router});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         // This is the theme of your application.
//         //
//         // Try running your application with "flutter run". You'll see the
//         // application has a blue toolbar. Then, without quitting the app, try
//         // changing the primarySwatch below to Colors.green and then invoke
//         // "hot reload" (press "r" in the console where you ran "flutter run",
//         // or simply save your changes to "hot reload" in a Flutter IDE).
//         // Notice that the counter didn't reset back to zero; the application
//         // is not restarted.
//         primarySwatch: Colors.blue,
//       ),
//       onGenerateRoute: router.generator(routeSettings),
//       // home: LandingPageView(),
//     );
//   }
// }