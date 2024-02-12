import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled1/UI/Tracking_page.dart';

import 'Home.dart';

class Place_Order extends StatefulWidget {
  const Place_Order({Key? key}) : super(key: key);

  @override
  State<Place_Order> createState() => _Place_OrderState();
}

class _Place_OrderState extends State<Place_Order> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Icon(Icons.more_vert),
          SizedBox(
            width: 20,
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 645,
              child: Container(
                child: SingleChildScrollView(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Delivery Address",
                            style: TextStyle(
                              fontSize: 20.sp,
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                            )),
                        SizedBox(
                          height: 15.h,
                        ),
                        Center(
                          child: Container(
                            width: 300,
                            height: 230,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              // border: Border.all(width: 1,color: Colors.grey),
                              color: Color(0xffffffff),
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
                              padding: EdgeInsets.symmetric(
                                  horizontal: 12.0, vertical: 12.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        'Name : ',
                                        style: TextStyle(
                                          fontSize: 18.sp,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      Text(' Pearl ')
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        'Street : ',
                                        style: TextStyle(
                                          fontSize: 18.sp,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      Text('3512 Pearl Street')
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        'City : ',
                                        style: TextStyle(
                                          fontSize: 18.sp,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      Text('3Nagercoil')
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        'State/Province/Area : ',
                                        style: TextStyle(
                                          fontSize: 18.sp,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      Text('Tmail Nadu')
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        'Phone Number : ',
                                        style: TextStyle(
                                          fontSize: 18.sp,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      Text('9658351582')
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        'Zip Code : ',
                                        style: TextStyle(
                                          fontSize: 18.sp,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      Text('658214')
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        'Country Calling Code : ',
                                        style: TextStyle(
                                          fontSize: 18.sp,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      Text('+ 91')
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        'Country : ',
                                        style: TextStyle(
                                          fontSize: 18.sp,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      Text('India')
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        Text("Product items",
                            style: TextStyle(
                              fontSize: 18.sp,
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                            )),
                        SizedBox(
                          height: 15.h,
                        ),
                        Center(
                          child: SizedBox(
                            width: 300,
                            child: GridView.count(
                              physics: NeverScrollableScrollPhysics(),
                              crossAxisCount: 1,
                              crossAxisSpacing: 0,
                              mainAxisSpacing: 20,
                              childAspectRatio: 100 / 25,
                              shrinkWrap: true,
                              children: List.generate(
                                3,
                                (index) {
                                  // ----------- Main container -----------------

                                  return Container(
                                    width: 315.w,
                                    // height: 100.h,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(18),
                                      // border: Border.all(width: 1,color: Colors.grey),
                                      color: Color(0xFFFFFFFF),
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
                                  );
                                },
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text('Promo Code',
                            style: TextStyle(
                              fontSize: 18.sp,
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                            )),
                        SizedBox(
                          height: 10.h,
                        ),
                        Center(
                          child: Container(
                            width: 305.w,
                            // height: 100.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18),
                              // border: Border.all(width: 1,color: Colors.grey),
                              color: Color(0xFFFFFFFF),
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
                                    width: 55.w,
                                    height: 60.h,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16),
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
                                          'assets/promo code.png',
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
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('Add Promo Code',
                                          style: TextStyle(
                                            fontSize: 16.sp,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500,
                                          )),
                                      Text("#nikum2024",
                                          style: TextStyle(
                                            fontSize: 12.sp,
                                            color: Colors.grey,
                                            fontWeight: FontWeight.w400,
                                          )),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        )
                      ]),
                ),
              ),
            ),
            Container(
              height: 58,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 100,
                              child: Text('Total Price',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w400,
                                  )),
                            ),
                            Text('\$ ${599}.${24}',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.w700,
                                )),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 20.w,
                          ),
                          child: TextButton(
                            onPressed: () {
                              Navigator.of(context)
                                  .push(MaterialPageRoute(builder: (builder)=>Tracking_page()  ));
                            },
                            child: Container(
                                width: 160.w,
                                height: 40.h,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(
                                        width: 1, color: Colors.grey.shade900),
                                    color: Color(0xfd000000)),
                                child: Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 38.5),
                                  child: Row(
                                    children: [
                                      Text(
                                        'Place Order',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ],
                                  ),
                                )),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
