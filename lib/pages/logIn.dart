// ignore: file_names
// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:flutter/cupertino.dart';
import 'package:home_test_test/shared/InputDeco_design.dart';

import '../my_button.dart';
import 'add_product_page.dart';

class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  late String user_name, user_email;
  final _textController = TextEditingController();

  //TextController to read text entered in text field
  TextEditingController user_password = TextEditingController();
  TextEditingController confirmpassword = TextEditingController();

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffd9d9d8),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
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
            Center(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 0.1),
                child: Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      SizedBox(height: 15),
                      Center(
                          child: Image.asset(
                        'assets/imgs/login_pic.png',
                        width: MediaQuery.of(context).size.width * 0.50,
                      )),
                      SizedBox(
                        height: 20,
                      ),
                      Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: 400,
                            decoration: BoxDecoration(
                              color: Colors.black12.withOpacity(0.3),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                            ),
                            child: Center(
                              child: Expanded(
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  // ignore: prefer_const_literals_to_create_immutables
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          bottom: 10,
                                          top: 20,
                                          left: 10,
                                          right: 10),
                                      child: Center(
                                        child: Text(
                                          "Welcome Back!",
                                          textAlign: TextAlign.center,
                                          style: GoogleFonts.aleo(
                                            textStyle: const TextStyle(
                                                fontSize: 43.0,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.black),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Center(
                                      child: Form(
                                        key: _formkey,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  bottom: 20,
                                                  left: 10,
                                                  right: 10),
                                              child: TextFormField(
                                                keyboardType:
                                                    TextInputType.text,
                                                decoration:
                                                    buildInputDecoration(
                                                        Icons.email, "Email"),
                                                validator: (String? value) {
                                                  if (value!.isEmpty) {
                                                    return 'Please a Enter';
                                                  }
                                                  if (!RegExp(
                                                          "^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                                                      .hasMatch(value)) {
                                                    return 'Please a valid Email';
                                                  }
                                                  return null;
                                                },
                                                onSaved: (String? value) {
                                                  user_email = value!;
                                                },
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  bottom: 40,
                                                  left: 10,
                                                  right: 10),
                                              child: TextFormField(
                                                obscureText: true,
                                                controller: user_password,
                                                keyboardType:
                                                    TextInputType.text,
                                                decoration:
                                                    buildInputDecoration(
                                                        Icons.lock, "Password"),
                                                validator: (String? value) {
                                                  if (value!.isEmpty) {
                                                    return 'Please a Enter Password';
                                                  }
                                                  return null;
                                                },
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 80, left: 80),
                                              child: MyButton(
                                                color: 0xffc67f4e,
                                                text: 'LOGIN',
                                                function: () {
                                                  if (_formkey.currentState!
                                                      .validate()) {
                                                    print("successful");
                                                    Navigator.push(
                                                        context,
                                                        // ignore: unnecessary_new
                                                        new MaterialPageRoute(
                                                            builder: (context) =>
                                                                AddProductPage()));

                                                    return;
                                                  } else {
                                                    print("UnSuccessfull");
                                                  }
                                                },
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Center(
                        child: Text('@2020|powred by ADHD'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
