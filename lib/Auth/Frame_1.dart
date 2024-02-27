import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled1/Auth/login_screen.dart';

import 'Signup.dart';
class Frame_1 extends StatefulWidget {
  const Frame_1({Key? key}) : super(key: key);

  @override
  State<Frame_1> createState() => _Frame_1State();
}

class _Frame_1State extends State<Frame_1> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.black,
      body: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 300.h,),
      Center(
        child: SizedBox(height: 150.h,width: 150.w,
          child: Image.asset("assets/Brand.png",
          ),
        ),
      ),
SizedBox(height: 200.h,),
          GestureDetector(
            onTap: (){
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (builder)=>HomePage()
              ));
            },
            child: Container(
              padding: EdgeInsets.only(top: 5.h,bottom:5.h,left: 130.w,right: 130.w),
              decoration: BoxDecoration(
                color:Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20.r),
                  bottomRight: Radius.circular(20.r),
                  topLeft: Radius.circular(20.r),
                  topRight: Radius.circular(20.r),
                ),
              ),
              child:  Padding(
                padding:  EdgeInsets.symmetric(horizontal: 10.w,vertical: 5.h),
                child: Text(
                  "Login",
                  style: TextStyle(color: Colors.black,fontSize: 20.sp,fontWeight: FontWeight.w700),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),

          SizedBox(height: 10.h,),

          GestureDetector(
            onTap: (){
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (builder)=>Signup()
              ));
            },
            child: Container(
              padding: EdgeInsets.only(top: 5.h,bottom:5.h,left: 120.w,right: 120.w),
              decoration: BoxDecoration(
                color:Colors.transparent,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20.r),
                  bottomRight: Radius.circular(20.r),
                  topLeft: Radius.circular(20.r),
                  topRight: Radius.circular(20.r),

                ),
                border: Border.all(width: 1,color: Colors.blueAccent),

              ),
              child:  Padding(
                padding:  EdgeInsets.symmetric(horizontal: 10.w,vertical: 5.h),
                child: Text(
                  "Sign Up",
                  style: TextStyle(color: Colors.white,fontSize: 20.sp,fontWeight: FontWeight.w700),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ])
    );
  }
}
