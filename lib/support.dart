import 'package:flutter/material.dart';
import 'package:projeler/Helper.dart';
import 'package:projeler/bottomNavigation.dart';
import 'package:projeler/login.dart';
import 'package:projeler/main.dart';

class SupportPage extends StatefulWidget {
  @override
  _SupportPageState createState() => _SupportPageState();
}
//erkan

class _SupportPageState extends State<SupportPage> {
  @override
  Widget build(BuildContext context) {
    var screen = MediaQuery.of(context);
    final double h = screen.size.height;
    final double w = screen.size.width;
    Helper.bottom_navigation_active_index = 3;

    return Scaffold(
        appBar: AppBar(
          title: Text("Destek"),
          backgroundColor: Colors.blue,
        ),
        bottomNavigationBar: CustomBottomNavigation(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(width: w, height: h, color: Colors.blue.shade50),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 50, bottom: 20),

                          )
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: w - 100,
                            height: 50,
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "Ad",
                                filled: true,
                                fillColor: Colors.blue.shade50,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            width: w - 100,
                            height: 50,
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "Soyad",
                                filled: true,
                                fillColor: Colors.blue.shade50,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            width: w - 100,
                            height: 50,
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "Telefon Numarası",
                                filled: true,
                                fillColor: Colors.blue.shade50,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            width: w - 100,
                            child: TextField(
                              maxLines: 7,
                              decoration: InputDecoration(
                                hintText: "Mesajınız",
                                filled: true,
                                fillColor: Colors.blue.shade50,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 15),
                            child: SizedBox(
                              width: w / 2,
                              child: ElevatedButton(
                                onPressed: () => {},
                                child: Text('Destek Talebini Gönder'),
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.blue,
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ));
  }
}
