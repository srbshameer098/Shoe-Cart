

import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled1/UI/Cart.dart';

import 'Home.dart';



class Page2 extends StatefulWidget {
  final List<String> image;

  const Page2({super.key, required this.image});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  int selectedIndex = -1;
  int selectedIndex1 = -1;
  List<String> name = [
    '40',
    '41',
    '42',
    '43',
    '44',
    '45'
  ];
  List<Color> colors1 = [
   Colors.white,
    Colors.black,
    Colors.grey,
    Colors.blue,
    Colors.redAccent,
    Colors.greenAccent,

  ];



  bool value1 = false;
  bool isVisible1 = false;

  bool value = false;

  List<bool> isVisible=[];

  int _counter = 1;
  int allowedUnit=9;



  void _incrementCounter() {
    if(_counter <=allowedUnit){
      setState(() {
        _counter++;
      });
    }
  }

  void decrementCounter() {
    if(_counter>1){
      setState(() {
        _counter--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    for(int i=0;i<puma.length;i++){
      isVisible.add(false);
    }
    return Scaffold(
      backgroundColor: const Color(0xfceeeeee),
bottomSheet: Container(
  height: 70,
  decoration: const BoxDecoration(
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(0.0),
        topLeft: Radius.circular(0.0),
      ),
      color: Color(0xffffffff)),
  child:  Padding(
    padding:  const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
    child: SizedBox(height: 55,
      child: Row(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Total Price',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                  )),
              Text('\$ ${536}.${24}',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w700,
                  )),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 60.w, ),
            child: TextButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (builder)=>const Cart()  ));
              },
              child: Container(
                  width: 160.w,
                  height: 40.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                          width: 1,
                          color: Colors.grey.shade900),
                      color: const Color(0xfd000000)),
                  child: const Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 19),
                    child: Row(crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.shopping_bag_outlined,color: Colors.white,),
                        SizedBox(width: 10,),
                        Text(
                          'Add To Cart',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  )),
            ),
          )
        ],
      ),
    ),
  ),
),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.arrow_back,
                          size: 16,
                        )),
                    SizedBox(
                      width: 247.w,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: (){
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (builder)=>const Cart()  ));
                        },
                        child: CircleAvatar(
                            radius: 15.r,
                            backgroundColor: Colors.white,
                            child: const Icon(
                              Icons.shopping_bag_outlined,
                              color: Colors.black,
                              size: 16,
                            )),
                      ),
                    ),
                  ],
                ),
              ),
              Center(
                child: SizedBox(
                  height: 300.h,
                  // width: 200.w,
                  child: Image.asset(
                    widget.image[0],
                    fit: BoxFit.fill,
                  ),
                ),
              ),

              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 320.w),
                    child: CircleAvatar(
                      radius: 15.r,
                      backgroundColor: Colors.white,
                      child: GestureDetector(
                          onTap: () {
                            setState(() {
                              isVisible1 = !isVisible1;
                            });
                          },
                          child:isVisible1==true
                              ? const Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                  size: 16,
                                )
                              : const Icon(
                                  Icons.favorite_border,
                                  color: Colors.black,
                                  size: 16,
                                )),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),

              // ----------- Main container -----------------

              Container(
                width: 370,

                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(40.0),
                      topLeft: Radius.circular(40.0),
                    ),
                    color: Color(0xf792424)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Nike Air 2566",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.w700,
                                  )),
                              Text("Nike ",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w400,
                                  )),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 99.w, top: 0.h),
                            child: Container(
                              width: 120.w,
                              height: 35.h,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  // border: Border.all(width: 1,color: Colors.grey),
                                  color: const Color(0xa1eaeaea)),
                              child: Center(
                                child: Row(
                                  children: [
                                    IconButton(
                                        onPressed: () {
                                          decrementCounter();

                                        },
                                        icon: const Icon(
                                          Icons.remove,
                                          size: 18,
                                        )),
                                    SizedBox(width: 20.w,
                                      child: Center(
                                        child: Text(
                                          '$_counter',
                                        ),
                                      ),
                                    ),
                                    IconButton(
                                        onPressed: () {
                                          _incrementCounter();
                                        },
                                        icon: const Icon(
                                          Icons.add,
                                          size: 18,
                                        )),
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: const Color(0xfff3922b),
                            size: 16.sp,
                          ),
                          Icon(
                            Icons.star,
                            color: const Color(0xfff3922b),
                            size: 16.sp,
                          ),
                          Icon(
                            Icons.star,
                            color: const Color(0xfff3922b),
                            size: 16.sp,
                          ),
                          Icon(
                            Icons.star,
                            color: const Color(0xfff3922b),
                            size: 16.sp,
                          ),
                          Icon(
                            Icons.star_border_outlined,
                            color: Colors.grey,
                            size: 16.sp,
                          ),

                          SizedBox(
                            width: 5.w,
                          ),
                          // Text("402",
                          //     style: TextStyle(
                          //       color: Colors.grey,
                          //       fontSize: 12.sp,
                          //       fontWeight: FontWeight.w400,
                          //     )),
                          SizedBox(
                            width: 2.w,
                          ),
                          Text("(${420}reviews)",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                              )),

                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      SizedBox(height: 160.h,
                        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Size",
                                style: TextStyle(
                                  fontSize: 20.sp,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                )),

                            SizedBox(
                              height: 60.h,
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
                                    child: CircleAvatar(


                                            backgroundColor: selectedIndex == index
                                                ? const Color(0xfd000000)
                                                : const Color(0xffffffff),
                                        child: Text(name[index],
                                            style: TextStyle(
                                              fontSize: 18.sp,
                                              color:selectedIndex == index
                                                  ? const Color(0xfdffffff)
                                                  : const Color(0xfd000000),
                                              fontWeight: FontWeight.w600,
                                            )),

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
                            Text("Color",
                                style: TextStyle(
                                  fontSize: 20.sp,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                )),
                            SizedBox(height: 5.h,),
                            Container(
                              // width: 200.w,
                              height: 40.h,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  // border: Border.all(width: 1,color: Colors.grey),
                                  color: const Color(0xbeeaeaea)),
                              child: Padding(
                                padding:  EdgeInsets.symmetric(horizontal: 10.w),
                               child: Expanded(
                                 child: ListView.builder(
                                   scrollDirection: Axis.horizontal,
                                     itemCount: colors1.length,
                                     itemBuilder: (BuildContext context, int index){
                                     return
                                       GestureDetector(
                                         onTap: () {
                                           setState(() {

                                             selectedIndex1=index;
                                           });
                                         },

                                         child: Row(
                                           children: [
                                             CircleAvatar(
                                               radius: 16.r,
                                               backgroundColor: Colors.grey.shade700,
                                               child: CircleAvatar(
                                                 radius: 15.r,
                                                 backgroundColor: colors1[index],
                                                 child:selectedIndex1==index
                                                     ?const Icon(
                                                   Icons.check,
                                                   color: Color(0xff7c7272),
                                                   size: 16,
                                                 )
                                                     :  const Icon(
                                                 Icons.check,
                                                 color: Colors.transparent,
                                                 size: 16,
                                               )
                                               ),
                                             ),
                                             const SizedBox(width: 5,)
                                           ],
                                         ),


                                       );

                                     }
                                 ),
                               ),





                              ),
                            ),
                            const SizedBox(width: 5,)


                          ],
                        ),
                      ),
                      SizedBox(height: 5.h,),

                      Text("Description",
                          style: TextStyle(
                            fontSize: 20.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                          )),
                      SizedBox(height: 5.h,),

                      SizedBox(height: 100.h,width: 310.w,
                        child: Text("Engineered to crush any movement-based workout,these on sneakers enhance the labal's orginal cloud sneaker with cutting edge technologies for a pair.",
                            style: TextStyle(
                              fontSize: 14.sp,
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                            )),
                      ),


                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
