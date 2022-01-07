// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class AddProductPage extends StatefulWidget {
  const AddProductPage({Key? key}) : super(key: key);

  @override
  _AddProductPageState createState() => _AddProductPageState();
}

class _AddProductPageState extends State<AddProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffd9d9d8),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(children: [
            Row(
              children: [
                Column(
                  children: [
                    Ink(
                      decoration: const ShapeDecoration(
                        color: Color(0xffc67f4e),
                        shape: CircleBorder(),
                      ),
                      child: Center(
                        child: IconButton(
                          icon: Icon(Icons.arrow_back_ios_new_rounded),
                          iconSize: 17,
                          color: Colors.white,
                          onPressed: () {
                            Navigator.pushReplacementNamed(context, '/welcome');
                          },
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ]),
        ));
  }
}
