import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Home.dart';

class Page2 extends StatefulWidget {
  final List<String> image;
  const Page2({super.key,required this.image});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  bool value = false;
  bool isVisible = false;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xfce5e5e5),
      appBar: AppBar(
        backgroundColor: Color(0xffffffff),
        elevation: 1,
        leading: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        title: Container(
            width: 150.w,
            height: 30.h,
            child: Row(
              children: [
                // SizedBox(width: 40.w,height: 30.h,
                //   child: Image.asset("assets/Brand.png",
                //     width: 5.w,
                //     height: 5.h,),
                // ),
                SizedBox(
                  width: 10.w,
                ),
                Text(
                  "Product",
                  style: TextStyle(color: Colors.black),
                ),
              ],
            )),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(children: [
            SizedBox(
              height: 310.h,
              width: 200.w,
              child: Image.asset(
                widget.image[0],
                width: 150.w,height: 150.h,
                fit: BoxFit.fill,
              ),
            ),
            Positioned(
              left: 310.w,
              top: 250.h,
              child: CircleAvatar(
                radius: 20.r,
                backgroundColor: Colors.white,
                child: GestureDetector(
                    onTap: () {
                      setState(() {
                        isVisible = !isVisible;
                      });
                    },
                    child: isVisible == true
                        ? Icon(
                            Icons.favorite,
                            color: Colors.red,
                          )
                        : Icon(
                            Icons.favorite_border,
                            color: Colors.black,
                          )),
              ),
            ),
            Positioned(
              left: 310.w,
              top: 200.h,
              child: CircleAvatar(
                  radius: 20.r,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.share_outlined,
                    color: Colors.black,
                  )),
            )
          ]),



          // ----------- Main container -----------------

          Container(width: 370,
            height: 400.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(40.0),
                  topLeft: Radius.circular(40.0),
                ),
                color: Color(0xffffffff)),
            child: Padding(
              padding: EdgeInsets.only(left: 12.w, right: 12.w, top: 15.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 20.sp,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 20.sp,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 20.sp,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 20.sp,
                      ),
                      Icon(
                        Icons.star_border_outlined,
                        color: Colors.grey,
                        size: 20.sp,
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      SizedBox(
                        width: 8.w,
                      ),
                      CircleAvatar(
                        radius: 3.r,
                        backgroundColor: Colors.grey.shade600,
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Icon(
                        Icons.insert_comment_outlined,
                        color: Colors.grey,
                        size: 20.sp,
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      Text("42",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                          )),
                      SizedBox(
                        width: 2.w,
                      ),
                      Text("reviews",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                          )),
                      SizedBox(
                        width: 8.w,
                      ),
                      CircleAvatar(
                        radius: 3.r,
                        backgroundColor: Colors.grey.shade600,
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      Icon(
                        Icons.shopping_bag_outlined,
                        color: Colors.grey,
                        size: 20.sp,
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      Text("42",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                          )),
                      SizedBox(
                        width: 2.w,
                      ),
                      Text("sold",
                          style: TextStyle(
                            fontSize: 12.sp,
                            color: Colors.grey,
                            fontWeight: FontWeight.w400,
                          )),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text("Nike Shoes 412",
                      style: TextStyle(
                        fontSize: 20.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      )),
                  Row(
                    children: [
                      Text("₹",
                          style: TextStyle(
                            fontSize: 20.sp,
                            color: Colors.red,
                            fontWeight: FontWeight.w400,
                          )),
                      SizedBox(
                        width: 5.w,
                      ),
                      Text("5400.00",
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w400,
                          )),
                      SizedBox(
                        width: 15.w,
                      ),
                      Text("( 1-5 pcs )",
                          style: TextStyle(
                            fontSize: 13.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                          ))
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 90.w, top: 10.h),
                        child: TextButton(
                          onPressed: () {},
                          child: Container(
                              width: 160.w,
                              height: 40.h,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  border: Border.all(
                                      width: 1, color: Colors.grey.shade900),
                                  color: Color(0xf52767f3)),
                              child: Center(
                                  child: Text(
                                'Add To Cart',
                                style: TextStyle(color: Colors.white),
                              ))),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
