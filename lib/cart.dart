import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projeler/Helper.dart';
import 'package:projeler/bottomNavigation.dart';
import 'package:projeler/main.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  List inCart = [
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

    for (var row in inCart) {
      sub_total = sub_total + (row['price'] * row['qty'].toDouble());
    }

    service = sub_total > service_limit ? 0 : (service_limit - sub_total);

    total = sub_total - sale + service;

    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Sepetim"),
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
                    for (var row in inCart)
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
                                      "${row['price'].toStringAsFixed(2)} x ${row['qty']} adet"),
                                ],
                              ),
                            ),
                            Expanded(
                                flex: 1,
                                child: Text(
                                    "${(row['qty'] * row['price']).toStringAsFixed(2)} TL"))
                          ],
                        ),
                      )
                  ],
                ),
              ),
            ),
            Container(
              width: w - 5,
              margin: EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Padding(
                padding: EdgeInsets.all(15),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 10),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Kupon Kodu",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 8.0),
                              child: Text(
                                "Eğer kupon kodunuz var ise kullanarak indirimden yararlanabilirsiniz.",
                                style: TextStyle(fontSize: 13),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 8.0),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: SizedBox(
                                      width: w / 2,
                                      height: 38,
                                      child: TextField(
                                        decoration: InputDecoration(
                                          contentPadding: EdgeInsets.only(
                                              left: 10, top: 5),
                                          hintText: "Kupon Kodu",
                                          border: OutlineInputBorder(),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: new BorderSide(
                                                color: Colors.blue),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 8.0),
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      child: Text("Uygula"),
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.blue,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ]),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: w - 5,
              margin: EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Padding(
                padding: EdgeInsets.all(15),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 10),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Sepet Özeti",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17),
                            ),
                            Padding(
                                padding: EdgeInsets.only(top: 8.0),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Ara Toplam"),
                                        Text(sub_total.toStringAsFixed(2)),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("İndirim"),
                                        Text(sale.toStringAsFixed(2)),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Servis Ücreti"),
                                        Text(service.toStringAsFixed(2)),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Toplam"),
                                        Text(total.toStringAsFixed(2)),
                                      ],
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 20),
                                      child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.end,
                                        children: [
                                          ElevatedButton(
                                            onPressed: () {},
                                            child: Text("Ödeme Adımına Geç"),
                                            style: ElevatedButton.styleFrom(
                                              primary: Colors.blue,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ))
                          ]),
                    ),
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
