import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projeler/bottomNavigation.dart';
import 'package:projeler/main.dart';
import 'package:projeler/product/layout.dart';
import 'data/products.dart' as query;

class Category extends StatefulWidget {
  late String title;
  late String image;
  late Color color;
  late int id;

  Category(this.title, this.image, this.color, this.id);

  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    var screen = MediaQuery.of(context);

    final h = screen.size.height;
    final w = screen.size.width;

    var rowLimit = 2;
    if (w > 420) rowLimit = 4;

    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(widget.title),
          ],
        ),
        backgroundColor: widget.color,
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
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: w,
                      child: Image.asset(widget.image),
                    )
                  ],
                ),
                Wrap(
                  children: [
                    if (!query.products.asMap().containsKey(widget.id))
                      Container(
                        padding: EdgeInsets.only(top: 50),
                        child: Text(
                          "Bu kategoride ürün bulunamadı",
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.red,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    else
                      for (var row in query.products[widget.id])
                        ProductLayout(row['name'], row['price'], row['image'], row['content'], row['id'])
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
