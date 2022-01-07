// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// ignore: unused_import

class SplashPage extends StatelessWidget {
  int? duration = 0;
  String? goToPage;

  SplashPage({this.goToPage, this.duration});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: duration!), () {
      Navigator.pushReplacementNamed(context, '/welcome');
    }

        // await for the Firebase initialization to occur

        );
    return Scaffold(
        body: Container(
      color: Colors.grey.shade300,
      child: Center(
          child: Image.asset(
        'assets/logo/souad_logo_1_1.png',
        width: MediaQuery.of(context).size.width * 0.7,
      )),
    ));
  }
}
