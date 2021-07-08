import 'package:flutter/material.dart';
import 'package:projeler/main.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}
//erkan

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    var screen = MediaQuery.of(context);
    final double h = screen.size.height;
    final double w = screen.size.width;

    return Scaffold(
        appBar: AppBar(
          title: Text("Giriş Yap"),
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
                                hintText: "Kullanıcı Adı",
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
                              obscureText: true,
                              decoration: InputDecoration(
                                hintText: "Parola",
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
                                child: Text('Giriş'),
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
                                print('şifremi unuttum tıklandı');
                              },
                              child: Text("Şifremi Unuttum"),
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
