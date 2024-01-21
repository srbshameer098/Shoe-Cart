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
          currengationBarItem(icon: Icon(Icons.category_outlined,color: Colors.black,), label: "Shop"),
          BottomNavigationBarItem(icon:  Icon(Icons.shopping_cart_outlined,color: Colors.black), label: "Me"),
          BottomNavigationBarItem(icon:  Icon(Icons.account_box_outlined,color: Colors.black), label: "Me"),

        ],
      ),body: screens[currentIndex],

    );
  }
}