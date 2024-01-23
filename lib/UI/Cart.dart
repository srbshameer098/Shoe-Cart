import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Cart')),
        actions: [
          IconButton(
            icon: Icon(Icons.search_outlined), onPressed: () {  },),
          const SizedBox(
            width: 10,
          )
        ],
      ),
    );
  }
}
