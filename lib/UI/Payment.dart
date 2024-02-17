import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled1/UI/Add_Cards.dart';

class Payment extends StatefulWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  int _paymentType = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:     Color(0xFFFFFFFF),
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10.h,
            ),
            Text('Payment',
                style: TextStyle(
                  fontSize: 22.sp,
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                )),
            SizedBox(
              height: 20.h,
            ),




  SizedBox(
    height: 500,
    child: ListView(
      shrinkWrap: true,
      children: [


        // -----------  1st container  ------------- //

                Center(
                  child: Container(
                    width: 335.w,
                    // height: 100.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      // border: Border.all(width: 1,color: Colors.grey),
                      color: Color(0xFFFFFFFF),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade300,
                          offset: const Offset(5.0, 5.0),
                          blurRadius: 5.0,
                          spreadRadius: 5.0,
                        ), //BoxShadow
                      //BoxShadow
                      ],
                    ),
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
                      child: Row(
                        children: [
                          // ------------ Image container  -----------------

                          Container(
                            width: 45.w,
                            height: 45.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              // border: Border.all(width: 1,color: Colors.grey),
                              color: Color(0xfff5f5f5),
                            ),
                            child: SizedBox(
                              // width: 66.65777587890625.w,
                              // height: 93.19111633300781.h,
                              child: Padding(
                                padding: EdgeInsets.only(top: 5.h, bottom: 5.h),
                                child: Image.asset(
                                  'assets/credit-card.png',
                                  width: 76.65777587890625.w,
                                  height: 83.19111633300781.h,
                                ),
                              ),
                            ),
                          ),

                          SizedBox(
                            width: 20.w,
                          ),

                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(width: 120.w,
                                child: Text('Credit Card',
                                    style: TextStyle(
                                      fontSize: 16.sp,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                    )),
                              ),

                            ],
                          ), SizedBox(
                            width: 80.w,
                          ),
                          Radio(
                            value: 1,
                            groupValue: _paymentType,
                            onChanged: (val) => setState(() {
                              _paymentType = val! as int;
                            }),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
        SizedBox(
          height: 20.h,
        ),


        // -----------  2nd container  ------------- //


        Center(
          child: Container(
            width: 335.w,
            // height: 100.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              // border: Border.all(width: 1,color: Colors.grey),
              color: Color(0xFFFFFFFF),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade300,
                  offset: const Offset(5.0, 5.0),
                  blurRadius: 5.0,
                  spreadRadius: 5.0,
                ), //BoxShadow

              ],
            ),
            child: Padding(
              padding:
              EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
              child: Row(
                children: [
                  // ------------ Image container  -----------------

                  Container(
                    width: 45.w,
                    height: 45.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      // border: Border.all(width: 1,color: Colors.grey),
                      color: Color(0xfff5f5f5),
                    ),
                    child: SizedBox(
                      // width: 66.65777587890625.w,
                      // height: 93.19111633300781.h,
                      child: Padding(
                        padding: EdgeInsets.only(top: 5.h, bottom: 5.h),
                        child: Image.asset(
                          'assets/Debit-card.png',
                          width: 76.65777587890625.w,
                          height: 83.19111633300781.h,
                        ),
                      ),
                    ),
                  ),

                  SizedBox(
                    width: 20.w,
                  ),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(width: 120.w,
                        child: Text('Debit Card',
                            style: TextStyle(
                              fontSize: 16.sp,
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                            )),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 80.w,
                  ),
                  Radio(
                    value: 2,
                    groupValue: _paymentType,
                    onChanged: (val) => setState(() {
                      _paymentType = val! as int;
                    }),
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: 20.h,
        ),




        // ----------- 3rd container  ------------- //


        Center(
          child: Container(
            width: 335.w,
            // height: 100.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              // border: Border.all(width: 1,color: Colors.grey),
              color: Color(0xFFFFFFFF),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade300,
                  offset: const Offset(5.0, 5.0),
                  blurRadius: 5.0,
                  spreadRadius: 5.0,
                ), //BoxShadow

              ],
            ),
            child: Padding(
              padding:
              EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
              child: Row(
                children: [
                  // ------------ Image container  -----------------

                  Container(
                    width: 40.w,
                    height: 40.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      // border: Border.all(width: 1,color: Colors.grey),
                      color: Color(0xfff5f5f5),
                    ),
                    child: SizedBox(
                      // width: 66.65777587890625.w,
                      // height: 93.19111633300781.h,
                      child: Padding(
                        padding: EdgeInsets.only(top: 5.h, bottom: 5.h),
                        child: Image.asset(
                          'assets/paypal (2).png',
                          // width: 76.65777587890625.w,
                          // height: 83.19111633300781.h,
                        ),
                      ),
                    ),
                  ),

                  SizedBox(
                    width: 20.w,
                  ),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(width: 130.w,
                        child: Text('Cash On Delivery',
                            style: TextStyle(
                              fontSize: 16.sp,
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                            )),
                      ),

                    ],
                  ),
                  SizedBox(
                    width: 75.w,
                  ),
                  Radio(
                    value: 3,
                    groupValue: _paymentType,
                    onChanged: (val) => setState(() {
                      _paymentType = val! as int;
                    }),
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: 20.h,
        ),





        // -----------  4th container  ------------- //

        Center(
          child: Container(
            width: 335.w,
            // height: 100.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              // border: Border.all(width: 1,color: Colors.grey),
              color: Color(0xFFFFFFFF),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade300,
                  offset: const Offset(5.0, 5.0),
                  blurRadius: 5.0,
                  spreadRadius: 5.0,
                ), //BoxShadow

              ],
            ),
            child: Padding(
              padding:
              EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
              child: Row(
                children: [
                  // ------------ Image container  -----------------

                  Container(
                    width: 40.w,
                    height: 40.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      // border: Border.all(width: 1,color: Colors.grey),
                      color: Color(0xfff5f5f5),
                    ),
                    child: SizedBox(
                      // width: 66.65777587890625.w,
                      // height: 93.19111633300781.h,
                      child: Padding(
                        padding: EdgeInsets.only(top: 12.h, bottom: 12.h),
                        child: Image.asset(
                          'assets/upi.png',
                          // width: 76.65777587890625.w,
                          // height: 83.19111633300781.h,
                        ),
                      ),
                    ),
                  ),

                  SizedBox(
                    width: 20.w,
                  ),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(width: 120.w,
                        child: Text('UPI Payment',
                            style: TextStyle(
                              fontSize: 16.sp,
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                            )),
                      ),

                    ],
                  ),
                  SizedBox(
                    width: 85.w,
                  ),
                  Radio(
                    value: 4,
                    groupValue: _paymentType,
                    onChanged: (val) => setState(() {
                      _paymentType = val! as int;
                    }),
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: 25.h,
        ),



        GestureDetector(
          onTap: (){
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (builder)=>Add_Card()  ));
          },
          child: Center(
            child: DottedBorder(
              color: Colors.grey,
              dashPattern: [6  ],
              strokeWidth: 2,
              borderType: BorderType.RRect,
              radius: Radius.circular(12),
              padding: EdgeInsets.all(6),
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(12)),
              child: Container(
                width: 295.w,
                // height: 100.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  // border: Border.all(width: 1,color: Colors.grey),
                  color: Color(0xFFFFFFFF),
                  // boxShadow: [
                  //   BoxShadow(
                  //     color: Colors.grey.shade300,
                  //     offset: const Offset(5.0, 5.0),
                  //     blurRadius: 5.0,
                  //     spreadRadius: 5.0,
                  //   ), //BoxShadow
                  //
                  // ],
                ),
                child: Padding(
                  padding:
                  EdgeInsets.symmetric(vertical: 0.h, horizontal: 88.w),
                  child: Row(crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // ------------ Image container  -----------------

                      Container(
                        width: 40.w,
                        height: 40.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(width: 1,color: Colors.grey),
                          color: Color(0xfff5f5f5),
                        ),
                        child: Center(child: Icon(Icons.add)),
                      ),

                      SizedBox(
                        width: 10.w,
                      ),

                      Text('Add Card',
                          style: TextStyle(
                            fontSize: 16.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          )),

                      // Radio(
                      //   value: 4,
                      //   groupValue: _paymentType,
                      //   onChanged: (val) => setState(() {
                      //     _paymentType = val! as int;
                      //   }),
                      // ),
                    ],
                  ),
                ),
              ),
            ),
          ),






          ),
        )]),
  ),
          ],
        ),
      ),
    );
  }
}
