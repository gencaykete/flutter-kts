import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projeler/category.dart';
import 'package:projeler/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Kuru Temizleme Sepeti",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.deepOrange,
          scaffoldBackgroundColor: HexColor("#e7eaf5"),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    var screen = MediaQuery.of(context);

    final h = screen.size.height;
    final w = screen.size.width;

    var rowLimit = 3;
    if (w > 420) rowLimit = 4;

    List arr = [
      {
        'name': "Kuru Temizleme",
        'icon': 'images/1.png',
        'banner': 'images/kt.jpg',
        'color': Colors.deepOrangeAccent,
        'id': 0
      },
      {
        'name': "Lostra",
        'icon': 'images/2.png',
        'banner': 'images/lostra.jpg',
        'color': Colors.deepPurpleAccent,
        'id': 1
      },
      {
        'name': "Perde",
        'icon': 'images/3.png',
        'banner': 'images/perde.jpg',
        'color': Colors.brown,
        'id': 2
      },
      {
        'name': "Ütüleme",
        'icon': 'images/5.png',
        'banner': 'images/utu.jpg',
        'color': Colors.purpleAccent,
        'id': 3
      },
      {
        'name': "Koltuk",
        'icon': 'images/4.png',
        'banner': 'images/koltuk.jpg',
        'color': Colors.green,
        'id': 4
      },
      {
        'name': "Halı",
        'icon': 'images/6.png',
        'banner': 'images/hali.jpg',
        'color': Colors.deepPurple,
        'id': 5
      },
    ];

    return Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Kuru Temizleme Sepeti"),
              IconButton(
                icon: Icon(
                  Icons.menu,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginPage()));
                },
              ),
            ],
          ),
          backgroundColor: Colors.blue,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    width: w,
                    height: h,
                  ),
                  Column(
                    children: [
                      // Slider
                      Row(
                        children: [
                          SizedBox(
                            width: w,
                            child:
                                Expanded(child: Image.asset('images/kt.jpg')),
                          ),
                        ],
                      ),
                      // Category List
                      Wrap(
                        children: [
                          Container(
                            padding: EdgeInsets.only(top: 10),
                          ),
                          for (var row in arr)
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Category(
                                            row['name'],
                                            row['banner'],
                                            row['color'],
                                            row['id'])));
                              },
                              child: Container(
                                width: w / rowLimit,
                                child: Image.asset(row['icon']),
                              ),
                            )
                        ],
                      ),
                      Visibility(
                        visible: isVisible,
                        child: Align(
                          heightFactor: 4.9,
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            width: w,
                            height: 30,
                            color: Colors.green,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Ürün Sepete Eklendi",style: TextStyle(color: Colors.white,fontSize: 16),),
                              ],
                            ),
                          ),
                        ),
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

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}
