import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled1/UI/Home.dart';

class My_Order extends StatefulWidget {
  const My_Order({Key? key}) : super(key: key);

  @override
  State<My_Order> createState() => _My_OrderState();
}

class _My_OrderState extends State<My_Order> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          body: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 40.h),
              child: Column(children: [
                SizedBox(
                  child: Row(
                    children: [
                      Text(
                        'My Order',
                        style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(width: 23.w,),
                      PreferredSize(
                        preferredSize: Size(100, 100),
                        child: TabBar(
                         tabAlignment: TabAlignment.start,


                          indicatorColor: Colors.transparent,
                          labelColor: Colors.white,
                          isScrollable: true,
                          tabs: [
                            Container(
                                width: 80.w,
                                height: 30.h,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  border:
                                      Border.all(width: 1, color: Colors.grey),
                                  color: Color(0xFD000000),
                                ),
                                child: Tab(child: Text('Ongoing'))),
                            Container(
                                width: 80.w,
                                height: 30.h,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  border:
                                      Border.all(width: 1, color: Colors.grey),
                                  color: Color(0xFFFFFFFF),
                                ),
                                child: Tab(
                                    child: Text(
                                  'Completed',
                                  style: TextStyle(color: Colors.black,),
                                ))),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Expanded(
                  child: TabBarView(children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: SizedBox(
                        // width: 290,
                        child: GridView.count(
                          physics: NeverScrollableScrollPhysics(),
                          crossAxisCount: 1,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 20,
                          childAspectRatio: 110 / 30,
                          shrinkWrap: true,
                          children: List.generate(
                            4,
                            (index) {
                              // ----------- Main container -----------------

                              return Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 12),
                                child: Container(
                                  // width: 290.w,
                                  // height: 100.h,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(18),
                                    //border: Border.all(width: 1,color: Colors.grey),
                                    color: Color(0xFFFFF6F6),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.shade300,
                                        blurRadius: 10.0,
                                        spreadRadius: 5.0,
                                      ), //BoxShadow
                                      // BoxShadow(
                                      //   color: Colors.white,
                                      //   offset: const Offset(0.0, 0.0),
                                      //   blurRadius: 0.0,
                                      //   spreadRadius: 0.0,
                                      // ), //BoxShadow
                                    ],
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Row(
                                      children: [
                                        // ------------ Image container  -----------------

                                        Container(
                                          width: 60.w,
                                          height: 80.h,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(16),
                                            // border: Border.all(width: 1,color: Colors.grey),
                                            color: Color(0xffe8e8e8),
                                          ),
                                          child: SizedBox(
                                            // width: 66.65777587890625.w,
                                            // height: 93.19111633300781.h,
                                            child: Padding(
                                              padding: EdgeInsets.only(
                                                  top: 12.h, bottom: 12.h),
                                              child: Image.asset(
                                                puma[index],
                                                // width: 76.65777587890625.w,
                                                // height: 83.19111633300781.h,
                                              ),
                                            ),
                                          ),
                                        ),

                                        SizedBox(
                                          width: 10.w,
                                        ),

                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(name[index],
                                                style: TextStyle(
                                                  fontSize: 16.sp,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w500,
                                                )),
                                            Text("Free Shipping",
                                                style: TextStyle(
                                                  fontSize: 12.sp,
                                                  color: Colors.grey,
                                                  fontWeight: FontWeight.w400,
                                                )),
                                            Text("\$${554}",
                                                style: TextStyle(
                                                  fontSize: 16.sp,
                                                  fontWeight: FontWeight.w500,
                                                )),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: SizedBox(
                        // width: 290,
                        child: GridView.count(
                          physics: NeverScrollableScrollPhysics(),
                          crossAxisCount: 1,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 20,
                          childAspectRatio: 110 / 30,
                          shrinkWrap: true,
                          children: List.generate(
                            4,
                            (index) {
                              // ----------- Main container -----------------

                              return Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 12),
                                child: Container(
                                  // width: 290.w,
                                  // height: 100.h,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(18),
                                    // border: Border.all(width: 1,color: Colors.grey),
                                    color: Color(0xFFF3FFF8),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.shade300,
                                        blurRadius: 10.0,
                                        spreadRadius: 5.0,
                                      ), //BoxShadow
                                      // BoxShadow(
                                      //   color: Colors.white,
                                      //   offset: const Offset(0.0, 0.0),
                                      //   blurRadius: 0.0,
                                      //   spreadRadius: 0.0,
                                      // ), //BoxShadow
                                    ],
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Row(
                                      children: [
                                        // ------------ Image container  -----------------

                                        Container(
                                          width: 60.w,
                                          height: 80.h,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(16),
                                            // border: Border.all(width: 1,color: Colors.grey),
                                            color: Color(0xffe8e8e8),
                                          ),
                                          child: SizedBox(
                                            // width: 66.65777587890625.w,
                                            // height: 93.19111633300781.h,
                                            child: Padding(
                                              padding: EdgeInsets.only(
                                                  top: 12.h, bottom: 12.h),
                                              child: Image.asset(
                                                puma[index],
                                                // width: 76.65777587890625.w,
                                                // height: 83.19111633300781.h,
                                              ),
                                            ),
                                          ),
                                        ),

                                        SizedBox(
                                          width: 10.w,
                                        ),

                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(name[index],
                                                style: TextStyle(
                                                  fontSize: 16.sp,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w500,
                                                )),
                                            Text("Free Shipping",
                                                style: TextStyle(
                                                  fontSize: 12.sp,
                                                  color: Colors.grey,
                                                  fontWeight: FontWeight.w400,
                                                )),
                                            Text("\$${554}",
                                                style: TextStyle(
                                                  fontSize: 16.sp,
                                                  fontWeight: FontWeight.w500,
                                                )),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                  ]),
                )
              ]),
            ),
          ),
        ));
  }
}
