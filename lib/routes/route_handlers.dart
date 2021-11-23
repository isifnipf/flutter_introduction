import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_introduction/screens/home.dart';
import 'package:flutter_introduction/screens/second_screen.dart';

var homeHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
      return const Home();
    });

var secondScreenHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
      return const SecondScreen();
    });