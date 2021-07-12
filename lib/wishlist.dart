import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projeler/Helper.dart';
import 'package:projeler/bottomNavigation.dart';
import 'package:projeler/main.dart';

class Wishlist extends StatefulWidget {
  @override
  _WishlistState createState() => _WishlistState();
}

class _WishlistState extends State<Wishlist> {
  List inWishlist = [
    {
      "id": 0,
      "name": "Gömlek",
      "image": "images/products/gomlek.png",
      "price": 9.90,
      "qty": 2
    },
    {
      "id": 1,
      "name": "Pantalon",
      "image": "images/products/pantolon.png",
      "price": 8.50,
      "qty": 1
    },
    {
      "id": 2,
      "name": "Bluz",
      "image": "images/products/bluz.png",
      "price": 18.50,
      "qty": 1
    },
  ];



  @override
  Widget build(BuildContext context) {
    double service_limit = 50;

    double sub_total = 0;
    double sale = 0;
    double service = 0;
    double total = 0;

    Helper.bottom_navigation_active_index = 1;

    var screen = MediaQuery.of(context);

    final h = screen.size.height;
    final w = screen.size.width;

    for (var row in inWishlist) {
      sub_total = sub_total + (row['price'] * row['qty'].toDouble());
    }

    service = sub_total > service_limit ? 0 : (service_limit - sub_total);

    total = sub_total - sale + service;

    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Favorilerim"),
          ],
        ),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: w - 5,
              margin: EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Padding(
                padding: EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    for (var row in inWishlist)
                      Container(
                        margin: EdgeInsets.only(bottom: 10),
                        width: w,
                        height: 60,
                        child: Row(
                          children: [
                            Expanded(
                                flex: 1, child: Image.asset(row['image'])),
                            Expanded(
                              flex: 3,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment:
                                CrossAxisAlignment.start,
                                children: [
                                  Text(row['name']),
                                  Text(
                                      "${row['price'].toStringAsFixed(2)}"),
                                ],
                              ),
                            ),
                            Expanded(
                                flex: 2,
                                child: ElevatedButton(
                                  onPressed: (){

                                  }, child: Text("Sepete Ekle"),

                                )
                            )
                          ],
                        ),
                      )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigation(),
    );
  }
}
