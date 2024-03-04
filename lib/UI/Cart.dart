import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled1/UI/Place_order.dart';
import 'package:untitled1/Widgets/RoundButton.dart';

import 'Home.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  bool value = false;
  bool isVisible = false;

  bool _isAlwaysShown = true;

  bool _showTrackOnHover = false;

  List<int> _counter = [];
  int allowedUnit=10;
  void _incrementCounter(int index) {
    if(_counter[index]<=allowedUnit){
      setState(() {
        _counter[index]++;
      });
    }

  }

  void decrementCounter(int index) {
    if(_counter[index]>1){
      setState(() {
        _counter[index]--;
      });
    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomSheet: Container(
        height: 70,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(0.0),
              topLeft: Radius.circular(0.0),
            ),
            color: Color(0xffffffff)),
        child:   Padding(
          padding: EdgeInsets.only(left: 0.w, ),
          child: TextButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (builder)=>const Place_Order()  ));
            },
            child: Container(
                width: 300.w,
                height: 50.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                        width: 1,
                        color: Colors.grey.shade900),
                    color: const Color(0xfd000000)),
                child: Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 75.w),
                  child: Row(crossAxisAlignment: CrossAxisAlignment.center,
                    children: [


                      Text(
                        'Proceed to Checkout',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                )),
          ),
        )
      ),
      appBar: AppBar(
        title: const Center(child: Text('Cart')),
        actions: [
          IconButton(
            icon: Icon(Icons.search_outlined),
            onPressed: () {},
          ),
          const SizedBox(
            width: 10,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.h),
          child: Column(
            children: [
              // -------------- 1st Container  ------------------  //

              Container(
                // width: 334,
                height: 420,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                   // border: Border.all(width: 2, color: Colors.grey.shade100),
                    color: Colors.white),
                child: Container(
                  child: GestureDetector(
                    onTap: () {
                      // Navigator.push
                      //   (context, MaterialPageRoute(builder: (builder)=>Page2()));
                    },
                    child: RawScrollbar(
                      radius: Radius.circular(20),
                      thumbColor: Colors.black,
                      thickness: 10,
                      child: Scrollbar(
                        thickness: 10,
                        radius: Radius.circular(15),
                        thumbVisibility: _isAlwaysShown,
                        showTrackOnHover: _showTrackOnHover,
                        child: GridView.count(
                          crossAxisCount: 1,
                          crossAxisSpacing: 5,
                          mainAxisSpacing: 5,
                          childAspectRatio: 140 / 40,
                          shrinkWrap: true,
                          children: List.generate(
                            img.length,
                            (index) {
                              _counter.add(1);
                              // ----------- Main container -----------------

                              return Container(
                                // width: 350.w,
                                // height: 70.h,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(18),
                                    border: Border.all(width: 1,color: Colors.grey.shade300),
                                    color: Color(0xffffffff)),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      // ------------ Image container  -----------------

                                      Container(
                                        // width: 70.w,
                                        // height: 80.h,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(16),
                                            // border: Border.all(width: 1,color: Colors.grey),
                                            color: Color(0xffffffff)),
                                        child: SizedBox(
                                          width: 76.w,
                                          height: 83.19111633300781.h,
                                          child: Padding(
                                            padding: EdgeInsets.only(
                                                top: 20.h, bottom: 12.h),
                                            child: Image.asset(
                                              img[index],
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
                                                color: Colors.green,
                                                fontWeight: FontWeight.w400,
                                              )),
                                          Text("\$${554}",
                                              style: TextStyle(
                                                fontSize: 16.sp,
                                                fontWeight: FontWeight.w400,
                                              )),
                                        ],
                                      ),

                                      // ---------- INC/Dec Container ------------- //
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: 24.w, top: 40.h),
                                        child: Container(

                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(25),
                                              // border: Border.all(width: 1,color: Colors.grey),
                                              color: Color(0xb6ffffff)),
                                          child: Row(
                                            children: [


                                              IconButton(
                                                  onPressed:()
                                                  {
                                                    decrementCounter(index);
                                                  },
                                                  icon: Icon(Icons.remove,size: 16,)),


                                              Text(
                                                '${_counter[index]}',
                                                style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14),


                                              ),



                                              IconButton(
                                                  onPressed:()
                                                  {
                                                    _incrementCounter(index);
                                                  },
                                                  icon: Icon(Icons.add,size: 16,)),







                                            ],
                                          ),
                                        ),
                                      )





                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: 19.h,
              ),
              // -------------- 2nd Container  ------------------  //

              Container(
                width: 334,
                height: 138,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(width: 1, color: Colors.grey.shade200),
                    color: Colors.white),
                child: Padding(
                  padding: EdgeInsets.only(
                      left: 10.w, right: 10.w, top: 10.h, bottom: 10.h),
                  child: Column(
                    children: [
                      // ----------- Row 1  --------------  //

                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 100.w,
                              child: Text("Subtotal :",
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w700,
                                  )),
                            ),
                            SizedBox(
                              width: 48.w,
                            ),
                            Container(
                              width: 140.w,
                              child: Text(
                                  textAlign: TextAlign.end,
                                  "\$${483} ",
                                  style: TextStyle(
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.w700,
                                  )),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                          width: 315.w,
                          child: Divider(
                            thickness: 0,
                          )),

                      // ----------- Row 2  --------------  //
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 100.w,
                              child: Text("Shipping :",
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w700,
                                  )),
                            ),
                            SizedBox(
                              width: 48.w,
                            ),
                            Container(
                              width: 140.w,
                              child: Text(
                                  textAlign: TextAlign.end,
                                  "\$${17} ",
                                  style: TextStyle(
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.w700,
                                  )),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                          width: 315.w,
                          child: Divider(
                            thickness: 0,
                          )),

                      // ----------- Row 3  --------------  //

                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 80.w,
                              child: Text("Bag Total :",
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w700,
                                  )),
                            ),
                            Text("(${3} items)",
                                style: TextStyle(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w700,
                                )),
                            Container(
                              width: 140.w,
                              child: Text(
                                  textAlign: TextAlign.end,
                                  "\$${500} ",
                                  style: TextStyle(
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.w700,
                                  )),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),



            ],
          ),
        ),
      ),
    );
  }
}
