import 'package:flutter/material.dart';
import 'package:projeler/cart.dart';
import 'package:projeler/category.dart';
import 'package:projeler/main.dart';
import 'package:projeler/Helper.dart';
import 'package:projeler/support.dart';
import 'package:projeler/wishlist.dart';

class CustomBottomNavigation extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Anasayfa',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_basket_outlined),
          label: 'Sepet',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          label: 'Favorilerim',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.support),
          label: 'Destek',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: 'Ayarlar',
        ),
      ],
      currentIndex: Helper.bottom_navigation_active_index,
      selectedItemColor: Colors.blue[600],
      onTap: (int index) => {
        if (index == 0){
            Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp()))
        }else if (index == 1){
          Navigator.push(context, MaterialPageRoute(builder: (context) => Cart()))
        }else if (index == 2){
          Navigator.push(context, MaterialPageRoute(builder: (context) => Wishlist()))
        }else if (index == 3){
          Navigator.push(context, MaterialPageRoute(builder: (context) => SupportPage()))
        }else if (index == 4){

        }
      },
    );
  }
}
