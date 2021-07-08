import 'package:flutter/material.dart';
import 'package:projeler/main.dart';
import 'package:projeler/product/view.dart';

class ProductLayout extends StatelessWidget {
  late String title;
  late double price;
  late String image;
  late String content;
  late int id;

  ProductLayout(this.title, this.price, this.image, this.content, this.id);

  @override
  Widget build(BuildContext context) {
    var screen = MediaQuery.of(context);

    final h = screen.size.height;
    final w = screen.size.width;

    var rowLimit = 2;
    if (w > 420) rowLimit = 4;

    return Wrap(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ProductView(
                        this.title, this.image, this.price, this.content, this.id)));
          },
          child: Container(
            margin: EdgeInsets.only(top: 20, right: 20, left: 10),
            padding: EdgeInsets.all(8),
            width: (w / rowLimit) - 30,
            height: 180,
            decoration: BoxDecoration(
                color: HexColor('#ffffff'),
                borderRadius: BorderRadius.all(Radius.circular(8))),
            child: Column(
              children: [
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          this.title,
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: (w / rowLimit) - 100,
                          child: Image.asset(this.image),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "${this.price.toStringAsFixed(2)} TL",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
