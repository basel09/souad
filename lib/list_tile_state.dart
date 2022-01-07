import 'package:flutter/material.dart';
import 'package:home_test_test/product_page_profile.dart';

class CustomeListTileState extends StatefulWidget {
  //const CustomeListTileState({ Key? key }) : super(key: key);
  IconData? icon;
  String? text;
  final VoidCallback? function;
  CustomeListTileState({
    Key? key,
    this.icon,
    this.text,
    this.function,
  }) : super(key: key);

  @override
  State<CustomeListTileState> createState() => _CustomeListTileStateState();
}

class _CustomeListTileStateState extends State<CustomeListTileState> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 8.0, 0, 0.8),
      child: InkWell(
        onTap: () => {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => ProductPage()))
        },
        splashColor: Color(0xffc67f4e),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(9.0, 0, 9.0, 0),
          child: SizedBox(
            height: 40,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // ignore: prefer_const_literals_to_create_immutables
              children: <Widget>[
                Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: <Widget>[
                    Icon(widget.icon),
                    Padding(
                      padding: const EdgeInsets.all(9.0),
                      child: Text(widget.text!, style: TextStyle(fontSize: 20)),
                    ),
                  ],
                ),
                Icon(Icons.arrow_forward)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
