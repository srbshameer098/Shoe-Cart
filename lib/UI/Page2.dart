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

  List<String> name = [
    '40',
    '41',
    '42',
    '43',
    '44',
    '45'
  ];
  List colors = [
    {

      'color': Colors.white,
    },
    {

      'color': Colors.black,
    },
    {
      'color': Colors.grey[800],
    },
    {
      'color': Colors.blue[900],
    },
    {
      'color': Colors.redAccent[800],
    },
    {
      'color': Colors.greenAccent[800],
    },
  ];



  bool value = false;
  bool isVisible = false;

  bool value1 = false;
  bool isVisible1 = false;

  int _counter = 1;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfceeeeee),
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
                        icon: Icon(
                          Icons.arrow_back,
                          size: 16,
                        )),
                    SizedBox(
                      width: 247.w,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                          radius: 15.r,
                          backgroundColor: Colors.white,
                          child: Icon(
                            Icons.shopping_bag_outlined,
                            color: Colors.black,
                            size: 16,
                          )),
                    ),
                  ],
                ),
              ),
              Center(
                child: SizedBox(
                  height: 300.h,
                  width: 200.w,
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
                          child: isVisible1 == true
                              ? Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                  size: 16,
                                )
                              : Icon(
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

                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(40.0),
                      topLeft: Radius.circular(40.0),
                    ),
                    color: Color(0xf792424)),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
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
                            padding: EdgeInsets.only(left: 100.w, top: 0.h),
                            child: Container(
                              width: 109.w,
                              height: 35.h,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  // border: Border.all(width: 1,color: Colors.grey),
                                  color: Color(0xa1eaeaea)),
                              child: Row(
                                children: [
                                  IconButton(
                                      onPressed: () {
                                        decrementCounter;

                                      },
                                      icon: Icon(
                                        Icons.remove,
                                        size: 18,
                                      )),
                                  Text(
                                    '$_counter',
                                  ),
                                  IconButton(
                                      onPressed: () {
                                        _incrementCounter;
                                      },
                                      icon: Icon(
                                        Icons.add,
                                        size: 18,
                                      )),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Color(0xfff3922b),
                            size: 16.sp,
                          ),
                          Icon(
                            Icons.star,
                            color: Color(0xfff3922b),
                            size: 16.sp,
                          ),
                          Icon(
                            Icons.star,
                            color: Color(0xfff3922b),
                            size: 16.sp,
                          ),
                          Icon(
                            Icons.star,
                            color: Color(0xfff3922b),
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
                                                ? Color(0xfd000000)
                                                : Color(0xffffffff),
                                        child: Text(name[index],
                                            style: TextStyle(
                                              fontSize: 18.sp,
                                              color:selectedIndex == index
                                                  ? Color(0xfdffffff)
                                                  : Color(0xfd000000),
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
                              width: 200.w,
                              height: 40.h,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  // border: Border.all(width: 1,color: Colors.grey),
                                  color: Color(0xbeeaeaea)),
                              child: Padding(
                                padding:  EdgeInsets.symmetric(horizontal: 10.w),
                               child: Row(
                                 children: [
                                   CircleAvatar(
                                     radius: 16.r,
                                     backgroundColor: Colors.grey.shade700,
                                     child: GestureDetector(
                                       onTap: () {
                                         setState(() {
                                           isVisible = !isVisible;
                                         });
                                       },

                                       child: CircleAvatar(
                                         radius: 15.r,
                                         backgroundColor: Colors.white,
                                         child: isVisible == true
                                             ? Icon(
                                           Icons.check,
                                           color: Colors.transparent,
                                           size: 16,
                                         )
                                             : Icon(
                                           Icons.check,
                                           color: Colors.black,
                                           size: 16,
                                         ),
                                       ),
                                     ),
                                   ),
SizedBox(width: 5.w,),
                                   CircleAvatar(
                                     radius: 16.r,
                                     backgroundColor: Colors.grey.shade700,
                                     child: GestureDetector(
                                       onTap: () {
                                         setState(() {
                                           isVisible = !isVisible;
                                         });
                                       },

                                       child: CircleAvatar(
                                         radius: 15.r,
                                         backgroundColor: Colors.black,
                                         child: isVisible == true
                                             ? Icon(
                                           Icons.check,
                                           color: Colors.transparent,
                                           size: 16,
                                         )
                                             : Icon(
                                           Icons.check,
                                           color: Colors.white,
                                           size: 16,
                                         ),
                                       ),
                                     ),
                                   ),


                                   SizedBox(width: 5.w,),
                                   CircleAvatar(
                                     radius: 16.r,
                                     backgroundColor: Colors.grey.shade700,
                                     child: GestureDetector(
                                       onTap: () {
                                         setState(() {
                                           isVisible = !isVisible;
                                         });
                                       },

                                       child: CircleAvatar(
                                         radius: 15.r,
                                         backgroundColor: Colors.blueAccent,
                                         child: isVisible == true
                                             ? Icon(
                                           Icons.check,
                                           color: Colors.transparent,
                                           size: 16,
                                         )
                                             : Icon(
                                           Icons.check,
                                           color: Colors.white,
                                           size: 16,
                                         ),
                                       ),
                                     ),
                                   ),

                                   SizedBox(width: 5.w,),
                                   CircleAvatar(
                                     radius: 16.r,
                                     backgroundColor: Colors.grey.shade700,
                                     child: GestureDetector(
                                       onTap: () {
                                         setState(() {
                                           isVisible = !isVisible;
                                         });
                                       },

                                       child: CircleAvatar(
                                         radius: 15.r,
                                         backgroundColor: Colors.grey,
                                         child: isVisible == true
                                             ? Icon(
                                           Icons.check,
                                           color: Colors.transparent,
                                           size: 16,
                                         )
                                             : Icon(
                                           Icons.check,
                                           color: Colors.white,
                                           size: 16,
                                         ),
                                       ),
                                     ),
                                   ),


                                   SizedBox(width: 5.w,),
                                   CircleAvatar(
                                     radius: 16.r,
                                     backgroundColor: Colors.grey.shade700,
                                     child: GestureDetector(
                                       onTap: () {
                                         setState(() {
                                           isVisible = !isVisible;
                                         });
                                       },

                                       child: CircleAvatar(
                                         radius: 15.r,
                                         backgroundColor: Colors.red,
                                         child: isVisible == true
                                             ? Icon(
                                           Icons.check,
                                           color: Colors.transparent,
                                           size: 16,
                                         )
                                             : Icon(
                                           Icons.check,
                                           color: Colors.white,
                                           size: 16,
                                         ),
                                       ),
                                     ),
                                   ),


                                 ],
                               ),




                              ),
                            ),


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

                      Padding(
                        padding:  EdgeInsets.symmetric(horizontal: 10),
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
                              padding: EdgeInsets.only(left: 40.w, ),
                              child: TextButton(
                                onPressed: () {
                                  Navigator.of(context)
                                      .push(MaterialPageRoute(builder: (builder)=>Cart()  ));
                                },
                                child: Container(
                                    width: 160.w,
                                    height: 40.h,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        border: Border.all(
                                            width: 1,
                                            color: Colors.grey.shade900),
                                        color: Color(0xfd000000)),
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
                      )
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
