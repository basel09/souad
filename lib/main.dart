// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:home_test_test/product_page_profile.dart';

import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var routes2 = {
      // '/welcome': (context) => Welcome(),
      //'/LogIn': (context) => LogIn(),
      //'/register': (context) => Register(),
      //'/home': (context) => Home(),
      '/ProductPage': (context) => ProductPage(),
    };
    return MaterialApp(
      routes: routes2,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
