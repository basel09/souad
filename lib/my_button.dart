import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyButton extends StatelessWidget {
  final int color;
  final String text;
  final VoidCallback? function;
  const MyButton(
      {Key? key,
      required this.color,
      required this.text,
      required this.function})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.only(bottom: 5.0),
      child: TextButton(
        child: Text(
          text,
          style: GoogleFonts.quicksand(
              textStyle: const TextStyle(
                  fontSize: 24.0,
                  //fontWeight: FontWeight.w600,
                  color: Color(0xffffffff))),
        ),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Color(color)),
          minimumSize:
              MaterialStateProperty.all(Size(width * 0.8, height * 0.065)),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0))),
        ),
        onPressed: function,
      ),
    );
  }
}
