import 'package:flutter/material.dart';
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
appBar: AppBar(
  elevation: 8,
  leading: Icon(Icons.menu),
  title: Container(
    width: 150,height: 30,
      child: Row(
    children: [
      SizedBox(width: 30,height: 20,
        child: Image.asset("assets/Brand.png",
          width: 5,
          height: 5,),
      ),
      SizedBox(width: 10,),
      Text("Brand"),
    ],
  )),
),
    );
  }
}
