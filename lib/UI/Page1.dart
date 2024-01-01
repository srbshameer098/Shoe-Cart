import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Home.dart';
import 'Page2.dart';
class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Color(0xff13161c),
        elevation: 1,
        leading: GestureDetector(   onTap: (){
          Navigator.of(context)
              .pop();
        },
            child: Icon(Icons.arrow_back,color: Colors.white,)),
        title: Container(
            width: 150.w,height: 30.h,
            child: Row(
              children: [
                // SizedBox(width: 40.w,height: 30.h,
                //   child: Image.asset("assets/Brand.png",
                //     width: 5.w,
                //     height: 5.h,),
                // ),
                SizedBox(width: 10.w,),
                Text(
                  "Brand",
                  style: TextStyle(
                    color: Colors.white
                ),),
              ],
            )),
      ),
      body: Column(
        children: [

          Expanded(

            child: GestureDetector(
              onTap: (){
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (builder)=>Page2()
                ));
              },
              child: ListView.separated(

                itemCount: puma.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    width: 160.w,
                    height: 120.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(width: 1,color: Colors.grey),
                        color: Color(0xffffffff)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          SizedBox( width: 76.65777587890625.w,
                            height: 83.19111633300781.h,
                            child: Padding(
                              padding: EdgeInsets.only(top: 20.h, bottom: 12.h),
                              child: Image.asset(
                                puma[index],
                                width: 76.65777587890625.w,
                                height: 83.19111633300781.h,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(name[index],
                                    style: TextStyle(
                                      fontSize: 13.sp,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                    )),

                                Row(
                                  children: [
                                    Text(
                                      "\$",
                                        style: TextStyle(
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w400,
                                        )
                                    ),
                                    Text(
                                        "54.2",
                                        style: TextStyle(
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w400,
                                        )
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.star,color: Colors.yellow,size: 16.sp,),
                                    Icon(Icons.star,color: Colors.yellow,size: 16.sp,),
                                    Icon(Icons.star,color: Colors.yellow,size: 16.sp,),
                                    Icon(Icons.star,color: Colors.yellow,size: 16.sp,),
                                    Icon(Icons.star_border_outlined,color: Colors.grey,size: 16.sp,),


                                    SizedBox(width:5.w ,),

                                    Text(
                                        "7.2",
                                        style: TextStyle(
                                          fontSize: 14.sp,
                                          color: Colors.yellow,
                                          fontWeight: FontWeight.w400,
                                        )
                                    ),

                                    SizedBox(width:8.w ,),
                                    CircleAvatar(radius: 2.r,backgroundColor: Colors.grey.shade300,),


                                    SizedBox(width:10.w ,),
                                    Text(
                                        "542",
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w400,
                                        )
                                    ),

                                    SizedBox(width:5.w ,),

                                    Text(
                                        "Orders",
                                        style: TextStyle(
                                          fontSize: 12.sp,
                                          color: Colors.grey,
                                          fontWeight: FontWeight.w400,
                                        )
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                        "Free Shipping",
                                        style: TextStyle(
                                          fontSize: 12.sp,
                                          color: Colors.green,
                                          fontWeight: FontWeight.w400,
                                        )
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          // SizedBox(
                          //   width: 120.w,
                          // ),
                        ],
                      ),
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    height: 10.h,
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
