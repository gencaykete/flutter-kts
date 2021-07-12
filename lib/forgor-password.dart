import 'package:flutter/material.dart';
import 'package:projeler/login.dart';
import 'package:projeler/main.dart';
import 'package:projeler/register.dart';

class ForgotPasswordPage extends StatefulWidget {
  @override
  _ForgotPasswordPageState createState() => _ForgotPasswordPageState();
}
//erkan

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  @override
  Widget build(BuildContext context) {
    var screen = MediaQuery.of(context);
    final double h = screen.size.height;
    final double w = screen.size.width;

    return Scaffold(
        appBar: AppBar(
          title: Text("Şifremi Unuttum"),
          backgroundColor: Colors.blue,
        ),
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
                            child: SizedBox(
                              child: Image.asset('images/logo.png'),
                            ),
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
                                hintText: "E-Posta Adresi veya Telefon Numarası",
                                filled: true,
                                fillColor: Colors.blue.shade50,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),

                          Padding(
                            padding: EdgeInsets.only(top: 15),
                            child: SizedBox(
                              width: w / 2,
                              child: ElevatedButton(
                                onPressed: () => {},
                                child: Text('Şifremi Yenile'),
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.blue,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => LoginPage()));
                              },
                              child: Text("Giriş Yap"),
                            ),
                          )
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
