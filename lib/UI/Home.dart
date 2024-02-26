import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled1/UI/Accessory.dart';
import 'package:untitled1/UI/Cloths.dart';
import 'package:untitled1/UI/Gadgets.dart';

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

List<String> img1 = [
  'assets/puma2.webp',
  'assets/adidas2.webp',
  'assets/nike2.webp',
  'assets/reebok2.webp',
  'assets/woodland2.webp',
  'assets/converse2.webp'
];

List<String> img2 = [
  'assets/puma3.webp',
  'assets/adidas3.webp',
  'assets/nike3.webp',
  'assets/reebok3.webp',
  'assets/woodland3.webp',
  'assets/converse3.webp'
];



List<String> name = [
  'Puma',
  'Adidas',
  'Nike',
  'Reebok',
  'Woodland',
  'Converse',
  'Fila',
  'Liberty'
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

List<String>logo= [
  'assets/puma.png',
  'assets/adidas.png',
  'assets/nike.png',
  'assets/reebok.png',
  'assets/woodland.png',
  'assets/converse.png'
];

List<String>puma= [
  'assets/nike5.png',
  'assets/puma2.webp',
  'assets/puma3.webp',
  'assets/puma4.webp',
  'assets/puma5.webp',
  'assets/puma6.webp'
];

List<String> adidas = [
  'assets/7.png',
  'assets/image 86.png',
  'assets/image 34.png',
  'assets/2 1.png',
  'assets/image 24.png',
  'assets/image 26.png'
];

List<String> nike = [
  'assets/7.png',
  'assets/image 86.png',
  'assets/image 34.png',
  'assets/2 1.png',
  'assets/image 24.png',
  'assets/image 26.png'
];


List<String> reebok = [
  'assets/7.png',
  'assets/image 86.png',
  'assets/image 34.png',
  'assets/2 1.png',
  'assets/image 24.png',
  'assets/image 26.png'
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
  'assets/7.png',
  'assets/image 86.png',
  'assets/image 34.png',
  'assets/2 1.png',
  'assets/image 24.png',
  'assets/image 26.png'
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

    return  DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Color(0xffffffff),
      appBar: AppBar(
        backgroundColor: Color(0xfd000000),
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
        actions: [Icon(Icons.search_outlined,color: Colors.white,),SizedBox(width: 15.w,)],
      ),
        body:  SingleChildScrollView(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [






              // ----------------------  banner 1  -------------------------------//


              Center(
                child: Container(
                  width: 375.w,
                  height: 175.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(0.r),
                      color: Colors.transparent),
                  child: ListView(
                    children: [
                      CarouselSlider(
                        items: [
                          //1st Image of Slider
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(0
                                  .r),
                            ),
                            child: Image.asset(
                              "assets/banner.png",
                              width: 375.w,
                              height: 175.h,fit: BoxFit.fill,
                            ),
                          ),

                          //2nd Image of Slider
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(0),
                            ),
                            child: Image.asset(
                              "assets/banner2.jpg",
                              width: 375,
                              height: 175,fit: BoxFit.fill,
                            ),
                          ),

                          //3rd Image of Slider
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(0),
                            ),
                            child: Image.asset(
                              "assets/banner3.jpg",
                              width: 375,
                              height: 175,fit: BoxFit.fill,
                            ),
                          ),

                          //3rd Image of Slider
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(0),
                            ),
                            child: Image.asset(
                              "assets/banner4.jpg",
                              width: 375,
                              height: 175,fit: BoxFit.fill,
                            ),
                          ),

                          //3rd Image of Slider
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(0),
                            ),
                            child: Image.asset(
                              "assets/banner5.jpg",
                              width: 375,
                              height: 175,fit: BoxFit.fill,
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
                          autoPlayAnimationDuration: Duration(milliseconds: 800),
                          viewportFraction: 1,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // SizedBox(height: 10.h,),

              Container( height: 50.h,width: 375.w,
                decoration: BoxDecoration(color: Color(0xff000000), borderRadius: BorderRadius.circular(0.r),),
                child: Padding(
                  padding:  EdgeInsets.only(left: 10.w,top: 15.h
                  ),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          height: 40.h,
                          decoration: BoxDecoration(color: Color(0xffffffff), borderRadius: BorderRadius.circular(12.r),),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Center(
                              child: Text('All Category',style: TextStyle(
                                color: Color(0xfd000000),
                              ),),
                            ),
                          ),
                        ),
                        SizedBox(width: 10.w,),
                        Container(
                          height: 40.h,
                          decoration: BoxDecoration(color: Color(0xffffffff), borderRadius: BorderRadius.circular(12.r),),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Center(
                              child: GestureDetector(
                                onTap: (){
                                  Navigator.of(context)
                                      .push(MaterialPageRoute(builder: (_)=>Gadgets()));
                                },
                                child: Text('Puma',style: TextStyle(
                                  color: Color(0xfd000000),
                                ),),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10.w,),
                        Container(
                          height: 40.h,
                          decoration: BoxDecoration(color: Color(0xffffffff), borderRadius: BorderRadius.circular(12.r),),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Center(
                              child:  GestureDetector(
                                onTap: (){
                                  Navigator.of(context)
                                      .push(MaterialPageRoute(builder: (_)=>Cloths()));
                                },
                                child: Text('Nike',style: TextStyle(
                                  color: Color(0xfd000000),
                                ),),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10.w,),
                        Container(
                          height: 40.h,
                          decoration: BoxDecoration(color: Color(0xffffffff), borderRadius: BorderRadius.circular(12.r),),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Center(
                              child: GestureDetector(
                                onTap: (){
                                  Navigator.of(context)
                                      .push(MaterialPageRoute(builder: (_)=>Accessory()));
                                },
                                child: Text('Adidas',style: TextStyle(
                                  color: Color(0xfd000000),
                                ),),
                              ),
                            ),
                          ),
                        ),

                        SizedBox(width: 10.w,),
                        Container(
                          height: 40.h,
                          decoration: BoxDecoration(color: Color(0xffffffff), borderRadius: BorderRadius.circular(12.r),),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Center(
                              child: GestureDetector(
                                onTap: (){
                                  Navigator.of(context)
                                      .push(MaterialPageRoute(builder: (_)=>Accessory()));
                                },
                                child: Text('Reebok',style: TextStyle(
                                  color: Color(0xfd000000),
                                ),),
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
                    color:  Color(0xff000000)),



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
                                  child: Text(
                                      "Deals and offers0",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18.sp,
                                        fontWeight: FontWeight.w600,
                                      )
                                  ),
                                ),

                                Text(
                                    "Electronic equipments",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 13.sp,
                                      fontWeight: FontWeight.w400,
                                    )
                                )

                              ],
                            ),
                          )

                        ],

                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (builder)=>Page1()
                        ));
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
                                    border: Border.all(width: 1,color: Colors.grey),
                                    color: Color(0xffffffff)),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(top: 20.h, bottom: 12.h),
                                      child: Image.asset(
                                        img[index],
                                        width: 76.65777587890625.w,
                                        height: 83.19111633300781.h,
                                      ),
                                    ),
                                    Text(name[index],
                                        style: TextStyle(
                                          fontSize: 13.sp,

                                          color: Colors.black,
                                          fontWeight: FontWeight.w500,
                                        )),
                                    SizedBox(height:10.h ,),
                                    Container(
                                      width: 61.w,
                                      height: 28,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(29),
                                          color: Color(0xffecc7b5)),
                                      child: Center(
                                        child: Text(per[index],
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                            )
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 120.w,
                                    ),
                                  ],
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
                    color:  Color(0xff000000)),



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
                                  child: Text(
                                      "Deals and offers 1",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18.sp,
                                        fontWeight: FontWeight.w600,
                                      )
                                  ),
                                ),

                                Text(
                                    "Electronic equipments",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 13.sp,
                                      fontWeight: FontWeight.w400,
                                    )
                                )

                              ],
                            ),
                          )

                        ],

                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (builder)=>Page1()
                        ));
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
                                    border: Border.all(width: 1,color: Colors.grey),
                                    color: Color(0xffffffff)),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(top: 20.h, bottom: 12.h),
                                      child: Image.asset(
                                        img1[index],
                                        width: 76.65777587890625.w,
                                        height: 83.19111633300781.h,
                                      ),
                                    ),
                                    Text(name[index],
                                        style: TextStyle(
                                          fontSize: 13.sp,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w400,
                                        )),
                                    SizedBox(height:10.h ,),
                                    Container(
                                      width: 61.w,
                                      height: 28,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(29),
                                          color: Color(0xffecc7b5)),
                                      child: Center(
                                        child: Text(per[index],
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                            )
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 120.w,
                                    ),
                                  ],
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
                      ),
                    ),
                  ],
                ),
              ),

              // SizedBox(height: 10.h,),

              // ----------------------  banner 2  -------------------------------//

              Center(
                child: Container(
                  width: 375.w,
                  height: 175.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      color: Colors.transparent),
                  child: ListView(

                    children: [
                      CarouselSlider(
                        items: [
                          //1st Image of Slider
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(0.r),
                            ),
                            child: Image.asset(
                              "assets/banner.png",
                              width: 375.w,
                              height: 175.h,fit: BoxFit.fill,
                            ),
                          ),

                          //2nd Image of Slider
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(0),
                            ),
                            child: Image.asset(
                              "assets/banner2.jpg",
                              width: 375,
                              height: 175,fit: BoxFit.fill,
                            ),
                          ),

                          //3rd Image of Slider
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(0),
                            ),
                            child: Image.asset(
                              "assets/banner3.jpg",
                              width: 360,
                              height: 175,fit: BoxFit.fill,
                            ),
                          ),

                          //3rd Image of Slider
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(0),
                            ),
                            child: Image.asset(
                              "assets/banner4.jpg",
                              width: 375,
                              height: 175,fit: BoxFit.fill,
                            ),
                          ),

                          //3rd Image of Slider
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(0),
                            ),
                            child: Image.asset(
                              "assets/banner5.jpg",
                              width: 375,
                              height: 175,fit: BoxFit.fill,
                            ),
                          ),


                        ],

                        //Slider Container properties
                        options: CarouselOptions(
                          height: 175.0,
                          enlargeCenterPage: true,
                          autoPlay: true,
                          aspectRatio: 16 / 9,
                          autoPlayCurve: Curves.fastOutSlowIn,
                          enableInfiniteScroll: true,
                          autoPlayAnimationDuration: Duration(milliseconds: 800),
                          viewportFraction: 1,
                        ),
                      ),
                    ],
                  ),
                ),
              ),



              // ------------------------------------------  Container 3  ---------------------------- //




              // SizedBox(height: 10.h,),

              Container(

                width: 375.w,
                height: 283.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(0),

                    color:  Color(0xff000000)),



                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(

                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                Center(
                                  child: Text(
                                      "Special offers",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18.sp,
                                        fontWeight: FontWeight.w600,
                                      )
                                  ),
                                ),

                                Text(
                                    "Year end sale",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 13.sp,
                                      fontWeight: FontWeight.w400,
                                    )
                                )

                              ],
                            ),
                          )

                        ],

                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (builder)=>Page1()
                        ));
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

                                    border: Border.all(width: 1,color: Colors.grey),
                                    color: Color(0xffffffff)),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(top: 20.h, bottom: 12.h),
                                      child: Image.asset(
                                        img2[index],
                                        width: 76.65777587890625.w,
                                        height: 83.19111633300781.h,
                                      ),
                                    ),
                                    Text(name[index],
                                        style: TextStyle(
                                          fontSize: 13.sp,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w400,
                                        )),
                                    SizedBox(height:10.h ,),
                                    Container(
                                      width: 61.w,
                                      height: 28,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(29),
                                          color: Color(0xffecc7b5)),
                                      child: Center(
                                        child: Text(per[index],
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                            )
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 120.w,
                                    ),
                                  ],
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
                      ),
                    ),
                  ],
                ),
              ),

SizedBox(height: 10.h,)






            ],
          ),
        ),
      ),
    );

  }
}
