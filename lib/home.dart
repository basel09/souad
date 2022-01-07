import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_test_test/Product.dart';
import 'package:home_test_test/list_tile_state.dart';
import 'package:home_test_test/product_formila.dart';
import 'package:home_test_test/product_page_profile.dart';
import 'package:home_test_test/search_delegate.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xfff4efe9),
        body: Padding(
            padding: const EdgeInsets.only(top: 8.0, bottom: 2.0),
            child: Column(children: [
              Expanded(
                  child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    ...List.generate(
                      demoProducts.length,
                      (index) {
                        return ProductFormila(
                          product: demoProducts[index],
                        );

                        // here by default width and height is 0
                      },
                    ),
                  ],
                ),
              )),
            ])),
        appBar: AppBar(
          backgroundColor: Color(0xffc67f4e),
          title: Text(
            'HOME',
            style: GoogleFonts.quicksand(
                textStyle: const TextStyle(
                    fontSize: 19.0,
                    fontWeight: FontWeight.w400,
                    color: Color(0xffffffff))),
          ),
          elevation: 11,
          actions: [
            IconButton(
              onPressed: () {
                showSearch(context: context, delegate: CustomeSearchDelgate());
              },
              icon: const Icon(Icons.search_rounded),
              tooltip: 'search',
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.refresh),
              tooltip: 'refresh',
            ),
            PopupMenuButton(
                itemBuilder: (context) => [
                      PopupMenuItem(
                        child: Text("sort by Price"),
                        value: 1,
                      ),
                      PopupMenuItem(
                        child: Text("sort by Quantity"),
                        value: 2,
                      ),
                      PopupMenuItem(
                        child: Text("None"),
                        value: 1,
                      ),
                    ]),
            //IconButton(onPressed: () {}, icon: Icons.access_time_sharp)
          ],
        ),
        drawer: Theme(
          data: Theme.of(context).copyWith(
            canvasColor: Color(
                0xffcdc5b9), //This will change the drawer background to blue.
            //other styles
          ),
          child: Drawer(
            child: ListView(
              // ignore: prefer_const_literals_to_create_immutables
              children: <Widget>[
                DrawerHeader(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: <Color>[Color(0xffc67f4e), Color(0xffcdc5b9)]),
                  ),
                  child: null,
                ),
                CustomeListTileState(
                  icon: Icons.person,
                  text: 'Profile ',
                  function: () => {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => ProductPage()))
                  },
                ),
                CustomeListTileState(
                  icon: Icons.add_shopping_cart_outlined,
                  text: 'Add Product',
                  function: () => {},
                ),
                CustomeListTileState(
                  icon: Icons.album_outlined,
                  text: 'About',
                  function: () => {},
                ),
                CustomeListTileState(
                  icon: Icons.logout_rounded,
                  text: 'Log Out',
                  function: () => {},
                ),
              ],
            ),
          ),
        ));
  }
}
