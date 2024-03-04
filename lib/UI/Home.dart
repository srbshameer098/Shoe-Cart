import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled1/UI/Adidas.dart';
import 'package:untitled1/UI/All_category.dart';
import 'package:untitled1/UI/Nike.dart';
import 'package:untitled1/UI/Puma.dart';
import 'package:untitled1/UI/Reebok.dart';

import 'Page1.dart';

bool loading = false;

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

List<String> img = [
  'assets/puma1.webp',
  'assets/adidas1.webp',
  'assets/nike1.webp',
  'assets/reebok1.webp',
  'assets/woodland1.webp',
  'assets/converse1.webp'
];

List<String> imgname = [
  'puma1',
  'adidas1',
  'nike1',
  'reebok1',
  'Woodland1',
  'converse1'
];

List<String> img1 = [
  'assets/puma2.webp',
  'assets/adidas2.webp',
  'assets/nike2.webp',
  'assets/reebok2.webp',
  'assets/woodland2.webp',
  'assets/converse2.webp'
];
List<String> img1name = [
  'puma2',
  'adidas2',
  'nike2',
  'reebok2',
  'woodland2',
  'converse2'
];

List<String> img2 = [
  'assets/puma3.webp',
  'assets/adidas3.webp',
  'assets/nike3.webp',
  'assets/reebok3.webp',
  'assets/woodland3.webp',
  'assets/converse3.webp'
];
List<String> img2name = [
  'puma3',
  'adidas3',
  'nike3',
  'reebok3',
  'woodland3',
  'converse3'
];

List<String> img3 = [
  'assets/puma4.webp',
  'assets/adidas4.webp',
  'assets/nike4.jpg',
  'assets/reebok4.webp',
  'assets/woodland4.webp',
  'assets/converse4.webp'
];
List<String> img3name = [
  'puma4',
  'adidas4',
  'nike4',
  'reebok4',
  'woodland4',
  'converse4'
];
List<String> name = [
  'Puma 1',
  'Puma 2',
  'Puma 3',
  'Puma 4',
  'Puma 5',
  'Puma 6',
  'Puma 7',
  'Puma 8',
];

List<String> per = [
  '-25%',
  '-20%',
  '-5%',
  '-50% ',
  '-30%',
  '-35%',
  '-30%',
  '-35%'
];

List<String> logo = [
  'assets/puma.png',
  'assets/adidas.png',
  'assets/nike.png',
  'assets/reebok.png',
  'assets/woodland.png',
  'assets/converse.png'
];
List<String> logoname = [
  'puma',
  'adidas',
  'nike',
  'reebok',
  'woodland',
  'converse'
];
List<String> puma = [
  'assets/nike5.png',
  'assets/puma2.webp',
  'assets/puma3.webp',
  'assets/puma4.webp',
  'assets/puma5.webp',
  'assets/puma6.webp',
  'assets/puma7.webp',
  'assets/puma8.webp',
  'assets/puma9.webp'

];
List<String> pumaname = [
  'puma1',
  'Puma2',
  'Puma3',
  'Puma4',
  'Puma5',
  'Puma6',
  'Puma7',
  'Puma8',
  'Puma9',
];

List<String> adidas = [
  'assets/adidas2.webp',
  'assets/adidas3.webp',
  'assets/adidas4.webp',
  'assets/adidas5.webp',
  'assets/adidas6.webp',
  'assets/adidas7.webp',
  'assets/adidas8.webp',
  'assets/adidas9.webp',
  'assets/adidas10.webp',
];



List<String> reebok = [
  'assets/reebok1.webp',
  'assets/reebok2.webp',
  'assets/reebok3.webp',
  'assets/reebok4.webp',
  'assets/reebok5.webp',
  'assets/reebok6.webp',
  'assets/reebok7.webp',
  'assets/reebok8.webp',
  'assets/reebok9.webp',
  'assets/reebok10.webp',
];

List<String> woodland = [
  'assets/7.png',
  'assets/image 86.png',
  'assets/image 34.png',
  'assets/2 1.png',
  'assets/image 24.png',
  'assets/image 26.png'
];

List<String> converse = [
  'assets/converse1.webp',
  'assets/converse2.webp',
  'assets/converse3.webp',
  'assets/converse4.webp',
  'assets/converse5.webp',
  'assets/converse6.webp',
  'assets/converse7.webp',
];

List<String> fila = [
  'assets/7.png',
  'assets/image 86.png',
  'assets/image 34.png',
  'assets/2 1.png',
  'assets/image 24.png',
  'assets/image 26.png'
];

List<String> liberty = [
  'assets/7.png',
  'assets/image 86.png',
  'assets/image 34.png',
  'assets/2 1.png',
  'assets/image 24.png',
  'assets/image 26.png'
];



int selectedIndex = -1;
int selectedIndex1 = -1;

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Color(0xFF000000),
        appBar: AppBar(
          backgroundColor: Color(0xfd000000),
          elevation: 1,
          leading: Icon(
            Icons.menu,
            color: Colors.white,
          ),
          title: Container(
              width: 150.w,
              height: 30.h,
              child: Row(
                children: [
                  SizedBox(
                    width: 40.w,
                    height: 30.h,
                    child: Image.asset(
                      "assets/Brand.png",
                      width: 5.w,
                      height: 5.h,
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Text(
                    "Brand",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              )),
          actions: [
            Icon(
              Icons.search_outlined,
              color: Colors.white,
            ),
            SizedBox(
              width: 15.w,
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ----------------------  banner 1  -------------------------------//

              Center(
                child: Container(
                  width: 375.w,
                  height: 179.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.r),
                      color: Colors.black),
                  child: ListView(
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      CarouselSlider(
                        items: [
                          //1st Image of Slider
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.r),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.asset(
                                "assets/banner.png",
                                width: 330.w,
                                // height: 175.h,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),

                          //2nd Image of Slider
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.asset(
                                "assets/banner2.jpg",
                                width: 330.w,
                                // height: 175,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),

                          //3rd Image of Slider
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.asset(
                                "assets/banner3.jpg",
                                width: 330.w,
                                // height: 175,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),

                          //3rd Image of Slider
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.asset(
                                "assets/banner4.jpg",
                                width: 330.w,
                                // height: 175,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),

                          //3rd Image of Slider
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.asset(
                                "assets/banner5.jpg",
                                width: 330.w,
                                // height: 175,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ],

                        //Slider Container properties
                        options: CarouselOptions(
                          animateToClosest: true,
                          height: 175.0,
                          enlargeCenterPage: true,
                          autoPlay: true,
                          aspectRatio: 16 / 9,
                          autoPlayCurve: Curves.ease,
                          enableInfiniteScroll: true,
                          autoPlayAnimationDuration:
                              Duration(milliseconds: 800),
                          viewportFraction: 1,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // SizedBox(height: 10.h,),

              Container(
                height: 50.h,
                width: 375.w,
                decoration: BoxDecoration(
                  color: Color(0xff000000),
                  borderRadius: BorderRadius.circular(0.r),
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 10.w, top: 15.h),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (_) =>  ALL_CATEGORY()));
                          },
                          child: Container(
                            height: 40.h,
                            decoration: BoxDecoration(
                              color: Color(0xffffffff),
                              borderRadius: BorderRadius.circular(12.r),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(
                                child: Text(
                                  'All Category',
                                  style: TextStyle(
                                    color: Color(0xfd000000),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Container(
                          height: 40.h,
                          decoration: BoxDecoration(
                            color: Color(0xffffffff),
                            borderRadius: BorderRadius.circular(12.r),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Center(
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (_) => PUMA()));
                                },
                                child: Text(
                                  'Puma',
                                  style: TextStyle(
                                    color: Color(0xfd000000),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Container(
                          height: 40.h,
                          decoration: BoxDecoration(
                            color: Color(0xffffffff),
                            borderRadius: BorderRadius.circular(12.r),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Center(
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (_) => NIKE()));
                                },
                                child: Text(
                                  'Nike',
                                  style: TextStyle(
                                    color: Color(0xfd000000),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Container(
                          height: 40.h,
                          decoration: BoxDecoration(
                            color: Color(0xffffffff),
                            borderRadius: BorderRadius.circular(12.r),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Center(
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (_) => ADIDAS()));
                                },
                                child: Text(
                                  'Adidas',
                                  style: TextStyle(
                                    color: Color(0xfd000000),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Container(
                          height: 40.h,
                          decoration: BoxDecoration(
                            color: Color(0xffffffff),
                            borderRadius: BorderRadius.circular(12.r),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Center(
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (_) => REEBOK()));
                                },
                                child: Text(
                                  'Reebok',
                                  style: TextStyle(
                                    color: Color(0xfd000000),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              // ------------------------------------------  Container 1  ---------------------------- //

              // SizedBox(height: 10.h,),

              Container(
                width: 375.w,
                height: 298.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(0),
                    color: Color(0xff000000)),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Center(
                                  child: Text("Deals and offers",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18.sp,
                                        fontWeight: FontWeight.w600,
                                      )),
                                ),
                                Text("Electronic equipments",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 13.sp,
                                      fontWeight: FontWeight.w400,
                                    ))
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (builder) => Page1()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          height: 190.h,
                          child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            itemCount: img.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Container(
                                width: 155.w,
                                height: 220.h,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    border: Border.all(
                                        width: 1, color: Colors.grey),
                                    color: Color(0xffffffff)),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                          top: 20.h, bottom: 12.h),
                                      child: Image.asset(
                                        img[index],
                                        width: 76.65777587890625.w,
                                        height: 83.19111633300781.h,
                                      ),
                                    ),
                                    Text(imgname[index],
                                        style: TextStyle(
                                          fontSize: 13.sp,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500,
                                        )),
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    Container(
                                      width: 61.w,
                                      height: 28,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(29),
                                          color: Color(0xffecc7b5)),
                                      child: Center(
                                        child: Text(per[index],
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                            )),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 120.w,
                                    ),
                                  ],
                                ),
                              );
                            },
                            separatorBuilder:
                                (BuildContext context, int index) {
                              return SizedBox(
                                width: 14.w,
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // ------------------------------------------  Container 2  ---------------------------- //

              // SizedBox(height: 10.h,),

              Container(
                width: 375.w,
                height: 283.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(0),
                    color: Color(0xff000000)),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Center(
                                  child: Text("Most Saled",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18.sp,
                                        fontWeight: FontWeight.w600,
                                      )),
                                ),
                                Text("Footwear",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 13.sp,
                                      fontWeight: FontWeight.w400,
                                    ))
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (builder) => Page1()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          height: 180.h,
                          child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            itemCount: img1.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Container(
                                width: 160.w,
                                height: 220.h,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    border: Border.all(
                                        width: 1, color: Colors.grey),
                                    color: Color(0xffffffff)),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                          top: 20.h, bottom: 12.h),
                                      child: Image.asset(
                                        img1[index],
                                        width: 76.65777587890625.w,
                                        height: 83.19111633300781.h,
                                      ),
                                    ),
                                    Text(img1name[index],
                                        style: TextStyle(
                                          fontSize: 13.sp,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w400,
                                        )),
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    Container(
                                      width: 61.w,
                                      height: 28,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(29),
                                          color: Color(0xffecc7b5)),
                                      child: Center(
                                        child: Text(per[index],
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                            )),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 120.w,
                                    ),
                                  ],
                                ),
                              );
                            },
                            separatorBuilder:
                                (BuildContext context, int index) {
                              return SizedBox(
                                width: 14.w,
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // SizedBox(height: 10.h,),

              // ----------------------  banner 2  -------------------------------//

              // Center(
              //   child: Container(
              //     width: 375.w,
              //     height: 175.h,
              //     decoration: BoxDecoration(
              //         borderRadius: BorderRadius.circular(10.r),
              //         color: Colors.transparent),
              //     child: ListView(
              //       physics: NeverScrollableScrollPhysics(),
              //       children: [
              //         CarouselSlider(
              //           items: [
              //             //1st Image of Slider
              //             Container(
              //               decoration: BoxDecoration(
              //                 borderRadius: BorderRadius.circular(0.r),
              //               ),
              //               child: Image.asset(
              //                 "assets/banner.png",
              //                 width: 375.w,
              //                 height: 175.h,
              //                 fit: BoxFit.fill,
              //               ),
              //             ),
              //
              //             //2nd Image of Slider
              //             Container(
              //               decoration: BoxDecoration(
              //                 borderRadius: BorderRadius.circular(0),
              //               ),
              //               child: Image.asset(
              //                 "assets/banner2.jpg",
              //                 width: 375,
              //                 height: 175,
              //                 fit: BoxFit.fill,
              //               ),
              //             ),
              //
              //             //3rd Image of Slider
              //             Container(
              //               decoration: BoxDecoration(
              //                 borderRadius: BorderRadius.circular(0),
              //               ),
              //               child: Image.asset(
              //                 "assets/banner3.jpg",
              //                 width: 360,
              //                 height: 175,
              //                 fit: BoxFit.fill,
              //               ),
              //             ),
              //
              //             //3rd Image of Slider
              //             Container(
              //               decoration: BoxDecoration(
              //                 borderRadius: BorderRadius.circular(0),
              //               ),
              //               child: Image.asset(
              //                 "assets/banner4.jpg",
              //                 width: 375,
              //                 height: 175,
              //                 fit: BoxFit.fill,
              //               ),
              //             ),
              //
              //             //3rd Image of Slider
              //             Container(
              //               decoration: BoxDecoration(
              //                 borderRadius: BorderRadius.circular(0),
              //               ),
              //               child: Image.asset(
              //                 "assets/banner5.jpg",
              //                 width: 375,
              //                 height: 175,
              //                 fit: BoxFit.fill,
              //               ),
              //             ),
              //           ],

              //           //Slider Container properties
              //           options: CarouselOptions(
              //             height: 175.0,
              //             enlargeCenterPage: true,
              //             autoPlay: true,
              //             aspectRatio: 16 / 9,
              //             autoPlayCurve: Curves.fastOutSlowIn,
              //             enableInfiniteScroll: true,
              //             autoPlayAnimationDuration:
              //                 Duration(milliseconds: 800),
              //             viewportFraction: 1,
              //           ),
              //         ),
              //       ],
              //     ),
              //   ),
              // ),
              // ------------------------------------------  Container 3  ---------------------------- //

              // SizedBox(height: 10.h,),

              Container(
                width: 375.w,
                height: 690.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(0),
                    color: Color(0xff000000)),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Center(
                                  child: Text("Popular Brands",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18.sp,
                                        fontWeight: FontWeight.w600,
                                      )),
                                ),
                                Text("Shoes",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 13.sp,
                                      fontWeight: FontWeight.w400,
                                    ))
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                          width: 345,
                          height: 590.h,
                          child: GridView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    // number of items in each row
                                    mainAxisSpacing: 15.0,
                                    // spacing between rows
                                    crossAxisSpacing: 15.0,
                                    childAspectRatio:
                                        200 / 230 // spacing between columns
                                    ),
                            padding: EdgeInsets.all(8.0),
                            // padding around the grid
                            itemCount: 6,
                            // total number of items
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (builder) => Page1()));
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16),
                                      border: Border.all(
                                          width: 1, color: Colors.blue),
                                      color: Color(0xffffffff)),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                            top: 10.h, bottom: 1.h),
                                        child: Image.asset(
                                          img2[index],
                                          width: 76.65777587890625.w,
                                          height: 83.19111633300781.h,
                                        ),
                                      ),
                                      Text(img2name[index],
                                          style: TextStyle(
                                            fontSize: 13.sp,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w400,
                                          )),
                                      SizedBox(
                                        height: 10.h,
                                      ),
                                      Container(
                                        width: 61.w,
                                        height: 28,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(29),
                                            color: Color(0xffecc7b5)),
                                        child: Center(
                                          child: Text(per[index],
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500,
                                              )),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10.h,
                                      ),
                                      SizedBox(
                                        width: 120.w,
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          )),
                    ),
                  ],
                ),
              ),

              // ------------------------------------------  Container 4  ---------------------------- //

              // SizedBox(height: 10.h,),

              Container(
                width: 375.w,
                height: 283.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(0),
                    color: Color(0xff000000)),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Center(
                                  child: Text("Special offers",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18.sp,
                                        fontWeight: FontWeight.w600,
                                      )),
                                ),
                                Text("Year end sale",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 13.sp,
                                      fontWeight: FontWeight.w400,
                                    ))
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (builder) => Page1()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          height: 180.h,
                          child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            itemCount: img2.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Container(
                                width: 160.w,
                                height: 220.h,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    border: Border.all(
                                        width: 1, color: Colors.grey),
                                    color: Color(0xffffffff)),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                          top: 20.h, bottom: 12.h),
                                      child: Image.asset(
                                        img3[index],
                                        width: 76.65777587890625.w,
                                        height: 83.19111633300781.h,
                                      ),
                                    ),
                                    Text(img3name[index],
                                        style: TextStyle(
                                          fontSize: 13.sp,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w400,
                                        )),
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    Container(
                                      width: 61.w,
                                      height: 28,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(29),
                                          color: Color(0xffecc7b5)),
                                      child: Center(
                                        child: Text(per[index],
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                            )),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 120.w,
                                    ),
                                  ],
                                ),
                              );
                            },
                            separatorBuilder:
                                (BuildContext context, int index) {
                              return SizedBox(
                                width: 14.w,
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: 10.h,
              )
            ],
          ),
        ),
      ),
    );
  }
}
