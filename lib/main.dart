import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projeler/Helper.dart';
import 'package:projeler/category.dart';
import 'package:projeler/login.dart';
import 'data/categories.dart' as categories;
import 'bottomNavigation.dart';
import 'package:html/parser.dart';
import 'package:http/http.dart' as http;

void main() async {
  final response = await http.Client().get(Uri.parse("https://www.tcmb.gov.tr/wps/wcm/connect/TR/TCMB+TR/Main+Menu/Istatistikler/Enflasyon+Verileri/"));
  var data = parse(response.body);
  print(data.getElementsByClassName('tcmb-content')[0].children[1].text);

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
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    Helper.bottom_navigation_active_index=0;
    var screen = MediaQuery.of(context);

    final h = screen.size.height;
    final w = screen.size.width;

    var rowLimit = 3;
    if (w > 420) rowLimit = 4;

    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Image.asset(
                'images/icon.png',
                width: 35,
              ),
            ),
            Container(
              child: SizedBox(
                width: w / 1.9,
                height: 38,
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 10, top: 5),
                    hintText: "Ara..",
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: new BorderSide(color: Colors.blue),
                    ),
                  ),
                ),
              ),
            ),
            IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.grey,
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginPage()));
              },
            ),
          ],
        ),
        backgroundColor: Colors.white,
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
                          child: Expanded(child: Image.asset('images/kt.jpg')),
                        ),
                      ],
                    ),
                    // Category List
                    Wrap(
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: 10),
                        ),
                        for (var row in categories.categories)
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
                              Text(
                                "Ürün Sepete Eklendi",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16),
                              ),
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
      ),
      bottomNavigationBar: CustomBottomNavigation(),
    );
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
