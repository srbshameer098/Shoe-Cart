import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

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
                )




              ],
            ),
          ),
        ),
      ),
    );

  }
}
