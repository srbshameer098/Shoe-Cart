import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';


List<Container> cards = [
  Container(
    alignment: Alignment.center,
    child: const Text('1'),
    color: Colors.blue,
  ),
  Container(
    alignment: Alignment.center,
    child: const Text('2'),
    color: Colors.red,
  ),
  Container(
    alignment: Alignment.center,
    child: const Text('3'),
    color: Colors.purple,
  )
];
class Cards extends StatefulWidget {
  const Cards({Key? key}) : super(key: key);

  @override
  State<Cards> createState() => _CardsState();
}

class _CardsState extends State<Cards> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('cards'),
      ),
      body: Column(
        children: [

          Container(
            width: 300,
            height: 250,
            child: Swiper(

              itemBuilder: (context, index) => cards[index],
              itemCount: cards.length,
            ),
          ),
        ],
      ),
    );
  }
}
