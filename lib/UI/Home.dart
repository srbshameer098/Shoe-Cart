import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}



List<String> img = [
  'assets/soccer.png',
  'assets/basketball.png',
  'assets/football.png',
  'assets/baseball.png',
  'assets/tennis.png',
  'assets/volly.png'
];                //_________________  Banner  ______________________
List<String> name = [
  'Soccer',
  'Basketball',
  'Football',
  'Baseball',
  'Tennis',
  'Volleyball'
];



int selectedIndex = -1;
class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {

    return  DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Color(0xffc3dcf1),
      appBar: AppBar(
        backgroundColor: Color(0xff13161c),
        elevation: 1,
        leading: Icon(Icons.menu,color: Colors.white,),
        title: Container(
      width: 150.w,height: 30.h,
        child: Row(
      children: [
        SizedBox(width: 40.w,height: 30.h,
          child: Image.asset("assets/Brand.png",
            width: 5.w,
            height: 5.h,),
        ),
        SizedBox(width: 10.w,),
        Text("Brand",style: TextStyle(
          color: Colors.white
        ),),
      ],
        )),
      ),
        body:  SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(12.0),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Row(
                  children: [
                    Container(
                      height: 40.h,
               decoration: BoxDecoration(color: Color(0xffded9f1), borderRadius: BorderRadius.circular(12.r),),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: Text('All Category',style: TextStyle(
                            color: Color(0xff926aed),
                          ),),
                        ),
                      ),
                    ),
SizedBox(width: 10.w,),
                    Container(
                      height: 40.h,
                      decoration: BoxDecoration(color: Color(0xffded9f1), borderRadius: BorderRadius.circular(12.r),),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: Text('Gadgets',style: TextStyle(
                            color: Color(0xff926aed),
                          ),),
                        ),
                      ),
                    ),
                    SizedBox(width: 10.w,),
                    Container(
                      height: 40.h,
                      decoration: BoxDecoration(color: Color(0xffded9f1), borderRadius: BorderRadius.circular(12.r),),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: Text('Cloths',style: TextStyle(
                            color: Color(0xff926aed),
                          ),),
                        ),
                      ),
                    ),
                    SizedBox(width: 10.w,),
                    Container(
                      height: 40.h,
                      decoration: BoxDecoration(color: Color(0xffded9f1), borderRadius: BorderRadius.circular(12.r),),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: Text('Accessory',style: TextStyle(
                            color: Color(0xff926aed),
                          ),),
                        ),
                      ),
                    ),

                  ],
                ),

                SizedBox(height: 10.h,),
                Container(
                  width: 375,
                  height: 172,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Color(0xff0f0f1c)),
                  child: ListView(
                    children: [
                      CarouselSlider(
                        items: [
                          //1st Image of Slider
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Image.asset(
                              "assets/bimg1.png",
                            ),
                          ),

                          //2nd Image of Slider
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Image.asset("assets/bimg1.png"),
                          ),

                          //3rd Image of Slider
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Image.asset("assets/bimg1.png"),
                          ),
                        ],

                        //Slider Container properties
                        options: CarouselOptions(
                          height: 170.0,
                          enlargeCenterPage: true,
                          autoPlay: true,
                          aspectRatio: 16 / 9,
                          autoPlayCurve: Curves.fastOutSlowIn,
                          enableInfiniteScroll: true,
                          autoPlayAnimationDuration: Duration(milliseconds: 800),
                          viewportFraction: 1.5,
                        ),
                      ),
                    ],
                  ),
                ),


SizedBox(height: 15.h,),

                Container(

                  width: 375.w,
                  height: 210.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color:  Color(0xffffffff)),



                  child: Column(
                    children: [
                      Row(

                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [

                                Text(
                                    "Deals and offers",
                                    style: TextStyle(
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.w600,
                                    )
                                ),

                                Text(
                                    "Electronic equipments",
                                    style: TextStyle(
                                      fontSize: 13.sp,
                                      fontWeight: FontWeight.w400,
                                    )
                                )

                              ],
                            ),
                          )

                        ],

                      ),
                      SizedBox(
                        height: 135.h,
                        child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemCount: img.length,
                          itemBuilder: (BuildContext context, int index) {
                            return GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedIndex = index;
                                });
                              },
                              child: Container(
                                width: 130.w,
                                height: 180.h,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    color: selectedIndex == index
                                        ? Color(0xffe88a64)
                                        : Color(0xff222232)),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(top: 20.h, bottom: 12.h),
                                      child: Image.asset(
                                        img[index],
                                        width: 56.w,
                                        height: 56.h,
                                      ),
                                    ),
                                    Text(name[index],
                                        style: TextStyle(
                                          fontSize: 18.sp,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600,
                                        )),
                                    SizedBox(
                                      width: 120.w,
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                          separatorBuilder: (BuildContext context, int index) {
                            return SizedBox(
                              width: 14.w,
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),








                SizedBox(height: 15.h,),

                Container(

                  width: 375.w,
                  height: 210.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color:  Color(0xffffffff)),



                  child: Column(
                    children: [
                      SizedBox(height:60.h,
                        child: Row(

                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [

                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                        "Home and outdoor",
                                        style: TextStyle(
                                          fontSize: 18.sp,
                                          fontWeight: FontWeight.w600,
                                        )
                                    ),
                                  ),

                                  // Text(
                                  //     "Electronic equipments",
                                  //     style: TextStyle(
                                  //       fontSize: 13.sp,
                                  //       fontWeight: FontWeight.w400,
                                  //     )
                                  // )

                                ],
                              ),
                            )

                          ],

                        ),
                      ),
                      SizedBox(
                        height: 135.h,
                        child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemCount: img.length,
                          itemBuilder: (BuildContext context, int index) {
                            return GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedIndex = index;
                                });
                              },
                              child: Container(
                                width: 130.w,
                                height: 180.h,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    color: selectedIndex == index
                                        ? Color(0xffe88a64)
                                        : Color(0xff222232)),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(top: 20.h, bottom: 12.h),
                                      child: Image.asset(
                                        img[index],
                                        width: 56.w,
                                        height: 56.h,
                                      ),
                                    ),
                                    Text(name[index],
                                        style: TextStyle(
                                          fontSize: 18.sp,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600,
                                        )),
                                    SizedBox(
                                      width: 120.w,
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                          separatorBuilder: (BuildContext context, int index) {
                            return SizedBox(
                              width: 14.w,
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),









                SizedBox(height: 15.h,),

                Container(

                  width: 375.w,
                  height: 210.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color:  Color(0xffffffff)),



                  child: Column(
                    children: [
                      SizedBox(height:60.h,
                        child: Row(

                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [

                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                        "Consumer electronics",
                                        style: TextStyle(
                                          fontSize: 18.sp,
                                          fontWeight: FontWeight.w600,
                                        )
                                    ),
                                  ),

                                  // Text(
                                  //     "Electronic equipments",
                                  //     style: TextStyle(
                                  //       fontSize: 13.sp,
                                  //       fontWeight: FontWeight.w400,
                                  //     )
                                  // )

                                ],
                              ),
                            )

                          ],

                        ),
                      ),
                      SizedBox(
                        height: 135.h,
                        child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemCount: img.length,
                          itemBuilder: (BuildContext context, int index) {
                            return GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedIndex = index;
                                });
                              },
                              child: Container(
                                width: 130.w,
                                height: 180.h,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    color: selectedIndex == index
                                        ? Color(0xffe88a64)
                                        : Color(0xff222232)),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(top: 20.h, bottom: 12.h),
                                      child: Image.asset(
                                        img[index],
                                        width: 56.w,
                                        height: 56.h,
                                      ),
                                    ),
                                    Text(name[index],
                                        style: TextStyle(
                                          fontSize: 18.sp,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600,
                                        )),
                                    SizedBox(
                                      width: 120.w,
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                          separatorBuilder: (BuildContext context, int index) {
                            return SizedBox(
                              width: 14.w,
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),








              ],
            ),
          ),
        ),
      ),
    );

  }
}
