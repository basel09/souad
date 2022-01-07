// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'Product.dart';

class ProductFormila extends StatefulWidget {
  const ProductFormila({
    required this.product,
  }) : super(key: null);

  final Product product;

  @override
  _ProductFormilaState createState() => _ProductFormilaState();
}

Product? _produc;
//List<Product> products = [];
//int count = 0;

class _ProductFormilaState extends State<ProductFormila> {
  @override
  Widget build(BuildContext context) {
    /*for (var i in demoProducts) {
      count = count + 1;
      // ignore: unnecessary_new
      products[i.id] = new Product(
          id: i.id,
          images: i.images,
          title: i.title,
          price: i.price,
          description: description);
      print(count);
    }*/
    return Container(
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(
                top: 20.0, bottom: 10.0, left: 25.0, right: 25.0),
            child: InkWell(
              onTap: () =>
                  {/*Navigator.pushReplacementNamed(context, '/ProductPage')*/},
              splashColor: Color(0xffc67f4e),
              child: Container(
                  height: 148,
                  decoration: BoxDecoration(
                    boxShadow: [
                      // ignore: prefer_const_constructors
                      BoxShadow(
                        color: Colors.black,
                        blurRadius: 4,
                        offset: Offset(4, 8), // Shadow position
                      ),
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                    color: Color(0xffcdc5b9),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(12.0),
                      bottomRight: Radius.circular(12.0),
                    ),
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.41,
                        height: MediaQuery.of(context).size.height,
                        child: FittedBox(
                          child: Column(
                            children: [
                              Image.asset(
                                _produc!.images[0],
                                fit: BoxFit.cover,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Expanded(
                                  child: Text(
                                    _produc!.title,
                                    maxLines: 3,
                                    overflow: TextOverflow.ellipsis,
                                    textDirection: TextDirection.rtl,
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                              )
                            ],
                          ),
                          // ignore: prefer_const_literals_to_create_immutables
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    bottom: 10.0, left: 10.0, right: 70),
                                child: Text(
                                  "\$${_produc!.price}",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: Colors.green,
                                      fontSize: 19,
                                      fontWeight: FontWeight.w400),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
