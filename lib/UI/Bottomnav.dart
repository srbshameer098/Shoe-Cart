import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled1/UI/Account.dart';
import 'package:untitled1/UI/Cart.dart';
import 'package:untitled1/UI/Categories.dart';

import 'Home.dart';


class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNavState();
}
final screens=[ Home(),Categories(),Cart(),Account()];
int currentIndex=0;
class _BottomNavState extends State<BottomNav> {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      bottomNavigationBar: BottomNavigationBar(backgroundColor: Colors.black,currentIndex: currentIndex,onTap: (index){
        setState(() {
          currentIndex=index;
        });
    },
    items: [

          BottomNavigationBarItem(icon: Icon(Icons.home_outlined,color: Colors.black,), label: "Home"),
          BottomNavigationBarItem(icon:  Icon(Icons.category_outlined,color: Colors.black), label: "Categories"),
          BottomNavigationBarItem(icon:  Icon(Icons.shopping_cart_outlined,color: Colors.black), label: "Cart"),
      BottomNavigationBarItem(icon:  Icon(Icons.perm_identity_outlined,color: Colors.black), label: "Account"),


    ],
      ),body: screens[currentIndex],

    );
  }
}