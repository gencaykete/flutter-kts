import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projeler/bottomNavigation.dart';
import 'package:projeler/main.dart';

class ProductView extends StatefulWidget {
  late String title;
  late double price;
  late String image;
  late String content;
  late int id;

  ProductView(this.title, this.image, this.price, this.content, this.id);

  @override
  _ProductViewState createState() => _ProductViewState();
}

class _ProductViewState extends State<ProductView> {
  List comments = [
    {
      {
        "name": "Gencay Kete",
        "comment": "Güzel temizlendi ve hızlı teslim edildi",
        "image": "images/profile/gencay.jpg",
      },
      {
        "name": "Recep Akdağ",
        "comment": "Ürünler tertemiz oldu",
        "image": "images/profile/recep.jpg",
      },
      {
        "name": "Recep Akdağ",
        "comment": "Ürünler tertemiz oldu",
        "image": "images/profile/recep.jpg",
      },
      {
        "name": "Recep Akdağ",
        "comment": "Ürünler tertemiz oldu",
        "image": "images/profile/recep.jpg",
      },
      {
        "name": "Recep Akdağ",
        "comment": "Ürünler tertemiz oldu",
        "image": "images/profile/recep.jpg",
      },
      {
        "name": "Recep Akdağ",
        "comment": "Ürünler tertemiz oldu",
        "image": "images/profile/recep.jpg",
      },
      {
        "name": "Recep Akdağ",
        "comment": "Ürünler tertemiz oldu",
        "image": "images/profile/recep.jpg",
      }
      ,
      {
        "name": "Recep Akdağ",
        "comment": "Ürünler tertemiz oldu",
        "image": "images/profile/recep.jpg",
      },
      {
        "name": "Recep Akdağ",
        "comment": "Ürünler tertemiz oldu",
        "image": "images/profile/recep.jpg",
      },
      {
        "name": "Recep Akdağ",
        "comment": "Ürünler tertemiz oldu",
        "image": "images/profile/recep.jpg",
      },
      {
        "name": "Recep Akdağ",
        "comment": "Ürünler tertemiz oldu",
        "image": "images/profile/recep.jpg",
      },
      {
        "name": "Recep Akdağ",
        "comment": "Ürünler tertemiz oldu",
        "image": "images/profile/recep.jpg",
      }
    },
    {
      {
        "name": "Erkan Yeşersin",
        "comment": "Hızlı temizlendi",
        "image": "images/profile/erkan.jpg",
      }
    }
  ];

  @override
  Widget build(BuildContext context) {
    var screen = MediaQuery.of(context);
    final h = screen.size.height;
    final w = screen.size.width;

    var rowLimit = 1;
    if (w > 420) rowLimit = 3;

    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(widget.title),
          ],
        ),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              width: w,
              height: h,
              color: HexColor('#e7eaf5'),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(widget.image,
                    width: w / rowLimit, height: h / 1.9, fit: BoxFit.fill),
                Container(
                  margin: EdgeInsets.only(top: 15),
                  padding: EdgeInsets.only(bottom: 12, left: 15, right: 15),
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 15),
                        child: Column(
                          children: [
                            Text(
                              widget.title,
                              style: TextStyle(
                                  fontSize: 19, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              widget.price.toStringAsFixed(2) + " TL",
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 19,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          IconButton(
                            icon: const Icon(Icons.favorite),
                            color: Colors.red,
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: const Icon(Icons.share),
                            color: Colors.blue,
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 15),
                  padding: EdgeInsets.only(bottom: 12, left: 15, right: 15),
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 12),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  width: w / 4,
                                  height: 35,
                                  child: TextField(
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                      hintText: "Adet",
                                      filled: true,
                                      fillColor: Colors.blue.shade50,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 20),
                                  child: ElevatedButton(
                                    onPressed: () {
                                      print("Sepete Eklendi");
                                    },
                                    child: Text("Sepete Ekle"),
                                    style: ElevatedButton.styleFrom(
                                        primary: Colors.blue),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 15),
                  padding: EdgeInsets.only(bottom: 12, left: 15, right: 15),
                  color: Colors.white,
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 10.0),
                        child: Column(
                          children: [
                            Text(
                              "Ürün Açıklaması",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 10),
                              child: Text(widget.content),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  padding: EdgeInsets.only(bottom: 12, left: 15, right: 15),
                  color: Colors.white,
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 10.0),
                        child: Column(
                          children: [
                            Text(
                              "Ürün Yorumları",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue,
                              ),
                            ),
                            Container(
                              constraints: BoxConstraints(
                                  maxHeight: 250
                              ),
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    Column(
                                      children: [
                                        if (!comments
                                            .asMap()
                                            .containsKey(widget.id))
                                          Container(
                                            width: w,
                                            child: Text(
                                              "Bu ürüne ait yorum bulunamadı",
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  color: Colors.red,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          )
                                        else
                                          for (var row in comments[widget.id])
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(bottom: 15),
                                              child: Row(
                                                children: [
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        right: 10),
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              100),
                                                      child: Image.asset(
                                                        row['image'],
                                                        width: 40,
                                                        height: 40,
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    width: w - 90,
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(row['name']),
                                                        Text(
                                                          row['comment'],
                                                          style: TextStyle(
                                                              color: HexColor(
                                                                  '#a3a3a3')),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 15),
                  padding: EdgeInsets.only(bottom: 12, left: 15, right: 15),
                  color: Colors.white,
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 10.0),
                        child: Column(
                          children: [
                            Text(
                              "Yorum Yap",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    width: w / 2.2,
                                    child: TextField(
                                      decoration: InputDecoration(
                                        hintText: "Adınız",
                                        filled: true,
                                        fillColor: Colors.blue.shade50,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: w / 2.2,
                                    child: TextField(
                                      decoration: InputDecoration(
                                        hintText: "Soyadınız",
                                        filled: true,
                                        fillColor: Colors.blue.shade50,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 15),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: w / 1.1,
                                    child: TextField(
                                      maxLines: 7,
                                      decoration: InputDecoration(
                                          filled: true,
                                          fillColor: Colors.blue.shade50,
                                          hintText: "Yorumunuz"),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 15),
                              child: Row(
                                children: [
                                  ElevatedButton(
                                      onPressed: () {}, child: Text("Gönder"))
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigation(),
    );
  }
}
