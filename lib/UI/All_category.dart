import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Home.dart';
import 'Page2.dart';
class ALL_CATEGORY extends StatefulWidget {
  const ALL_CATEGORY({Key? key}) : super(key: key);

  @override
  State<ALL_CATEGORY> createState() => _ALL_CATEGORYState();
}

List<String> name1 = [
  'Adidas2',
  'Adidas3',
  'Adidas4',
  'Adidas5',
  'Adidas6',
  'Adidas7',
  'Adidas8',
  'Adidas9',
  'Adidas10',
  'Converse1',
  'Converse2',
  'Converse3',
  'Converse4',
  'Converse5',
  'Converse6',
  'Converse7',
  'Nike1',
  'Nike2',
  'Nike3',
  'Nike4',
  'Nike5',
  'Nike6',
  'Nike7',
  'Nike8',
  'Nike9',
  'Nike10',
  'Puma2',
  'Puma3',
  'Puma4',
  'Puma5',
  'Puma6'
];
List<String> allcategory = [
  'assets/adidas2.webp',
  'assets/adidas3.webp',
  'assets/adidas4.webp',
  'assets/adidas5.webp',
  'assets/adidas6.webp',
  'assets/adidas7.webp',
  'assets/adidas8.webp',
  'assets/adidas9.webp',
  'assets/adidas10.webp',
  'assets/converse1.webp',
  'assets/converse2.webp',
  'assets/converse3.webp',
  'assets/converse4.webp',
  'assets/converse5.webp',
  'assets/converse6.webp',
  'assets/converse7.webp',
  'assets/nike1.webp',
  'assets/nike2.webp',
  'assets/nike3.webp',
  'assets/nike4.jpg',
  'assets/nike5.png',
  'assets/nike6.webp',
  'assets/nike7.webp',
  'assets/nike8.webp',
  'assets/nike9.webp',
  'assets/nike10.webp',
  'assets/puma2.webp',
  'assets/puma3.webp',
  'assets/puma4.webp',
  'assets/puma5.webp',
  'assets/puma6.webp'
];
class _ALL_CATEGORYState extends State<ALL_CATEGORY> {

  bool value = false;

  List<bool> isVisible=[];



  @override
  Widget build(BuildContext context) {
    for(int i=0;i<name1.length;i++){
      isVisible.add(false);
    }

    return  Scaffold(
      backgroundColor: Colors.white,

      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 30.h
            ),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  GestureDetector(   onTap: (){
                    Navigator.of(context)
                        .pop();
                  },
                      child: Icon(Icons.arrow_back,color: Colors.black,)),

                  SizedBox(width: 260,),

                  Icon(Icons.search_outlined),
                ],
              ),
            ),
            SizedBox(height: 30.h
            ),
            Expanded(

              child: Container(

                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 5,
                  childAspectRatio: 200 / 300,
                  shrinkWrap: true,
                  children:
                  List.generate(

                    name1.length,
                        (index) {


                      // ----------- Main container -----------------

                      return GestureDetector(onTap: (){
                        Navigator.push
                          (context, MaterialPageRoute(builder: (builder)=>Page2(image:puma,)));
                      },
                        child: Container(
                          width: 140.w,
                          height: 200.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18),
                              // border: Border.all(width: 1,color: Colors.grey),
                              color: Color(0xffffffff)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                              children: [

                                // ------------ Image container  -----------------

                                Stack(
                                    children: [Container(
                                      width: 160.w,
                                      height: 180.h,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(16),
                                          // border: Border.all(width: 1,color: Colors.grey),
                                          color: Color(0xfce5e5e5)),
                                      child: SizedBox( width: 76.65777587890625.w,
                                        height: 83.19111633300781.h,
                                        child: Padding(
                                          padding: EdgeInsets.only(top: 20.h, bottom: 12.h),
                                          child: Image.asset(
                                            allcategory[index],
                                            width: 76.65777587890625.w,
                                            height: 83.19111633300781.h,
                                          ),
                                        ),
                                      ),
                                    ),

                                      Positioned(left: 119.w,top: 11.h,
                                        child: CircleAvatar(radius: 15.r,backgroundColor: Colors.black,
                                          child: GestureDetector(onTap: (){
                                            setState((){
                                              isVisible[index]=!isVisible[index];
                                            });
                                          },
                                              child:isVisible[index]==true? Icon(
                                                Icons.favorite,
                                                color: Colors.red,size: 16,
                                              ):Icon(
                                                Icons.favorite_border,
                                                color: Colors.white,size: 16,
                                              )
                                          ),
                                        ),
                                      ),


                                    ]),
                                SizedBox(height: 10.h,),
                                Column(
                                  children: [
                                    Center(
                                      child: Text(name1[index],
                                          style: TextStyle(
                                            fontSize: 16.sp,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500,
                                          )),
                                    ),

                                    Padding(
                                      padding:  EdgeInsets.symmetric(horizontal: 55),
                                      child: SizedBox(width: 100,
                                        child: Row(
                                          children: [
                                            Text(
                                                "\$",
                                                style: TextStyle(
                                                  fontSize: 16.sp,
                                                  fontWeight: FontWeight.w400,
                                                )
                                            ),
                                            Text(
                                                "554.2",
                                                style: TextStyle(
                                                  fontSize: 16.sp,
                                                  fontWeight: FontWeight.w400,
                                                )
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),

                                    Center(
                                      child: Text(
                                          "Free Shipping",
                                          style: TextStyle(
                                            fontSize: 12.sp,
                                            color: Colors.green,
                                            fontWeight: FontWeight.w400,
                                          )
                                      ),
                                    )
                                  ],
                                ),
                                // SizedBox(
                                //   width: 120.w,
                                // ),

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

          ],
        ),
      ),
    );
  }
}
