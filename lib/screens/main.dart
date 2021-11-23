import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_introduction/routes/router.dart';
import 'package:flutter_introduction/routes/routes.dart';

class Main extends StatefulWidget {
  @override
  State createState() {
    return _MainState();
  }
}


class _MainState extends State<Main> {

  _MainState() {
    final router = FluroRouter();
    Routes.configureRoutes(router);
    MyRouter.router = router;
  }
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Introduction',
      debugShowCheckedModeBanner: true,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: MyRouter.router.generator,
    );
  }
}

