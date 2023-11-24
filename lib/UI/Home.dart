import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled1/UI/Accessory.dart';
import 'package:untitled1/UI/Cloths.dart';
import 'package:untitled1/UI/Gadgets.dart';
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}



List<String> img = [
  'assets/7.png',
  'assets/image 86.png',
  'assets/image 34.png',
  'assets/21.png',
  'assets/image 24.png',
  'assets/image 26.png'
];                //_________________  Banner  ______________________
List<String> name = [
  'Cloths',
  'Headphones',
  'Laptobs',
  'Smart watches',
  'Mobiles',
  'Wallets'
];
List<String> per = [
  '-25%',
  '-25%',
  '-25%',
  '-25% ',
  '-25%',
  '-25%'
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
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Padding(
                padding: const EdgeInsets.all(12.0),
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
                            child: Text('Gadgets',style: TextStyle(
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
                            child: Text('Cloths',style: TextStyle(
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
                            child: Text('Accessory',style: TextStyle(
                              color: Color(0xfd000000),
                            ),),
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
              ),

              SizedBox(height: 10.h,),

              Center(
                child: Container(
                  width: 360,
                  height: 175,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xffffffff)),
                  child: ListView(
                    children: [
                      CarouselSlider(
                        items: [
                          //1st Image of Slider
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(0),
                            ),
                            child: Image.asset(
                              "assets/banner.png",
                              width: 360,
                              height: 175,fit: BoxFit.fill,
                            ),
                          ),

                          //2nd Image of Slider
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(0),
                            ),
                            child: Image.asset(
                              "assets/banner.png",
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
                              "assets/banner.png",
                              width: 360,
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


          SizedBox(height: 15.h,),

              Container(

                width: 375.w,
                height: 283.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color:  Color(0xffffffff)),



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
                                      "Deals and offers",
                                      style: TextStyle(
                                        fontSize: 18.sp,
                                        fontWeight: FontWeight.w600,
                                      )
                                  ),
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
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        height: 180.h,
                        child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemCount: img.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              width: 160.w,
                              height: 220.h,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  border: Border.all(width: 0.5,color: Colors.grey),
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
                  ],
                ),
              ),








              SizedBox(height: 15.h,),

              Container(

                width: 375.w,
                height: 283.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color:  Color(0xffffffff)),



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
                                      "Deals and offers",
                                      style: TextStyle(
                                        fontSize: 18.sp,
                                        fontWeight: FontWeight.w600,
                                      )
                                  ),
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
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        height: 180.h,
                        child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemCount: img.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              width: 160.w,
                              height: 220.h,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  border: Border.all(width: 0.5,color: Colors.grey),
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
                  ],
                ),
              ),









              SizedBox(height: 15.h,),

              Container(

                width: 375.w,
                height: 283.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color:  Color(0xffffffff)),



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
                                      "Deals and offers",
                                      style: TextStyle(
                                        fontSize: 18.sp,
                                        fontWeight: FontWeight.w600,
                                      )
                                  ),
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
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        height: 180.h,
                        child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemCount: img.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              width: 160.w,
                              height: 220.h,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  border: Border.all(width: 0.5,color: Colors.grey),
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
                  ],
                ),
              ),








            ],
          ),
        ),
      ),
    );

  }
}
