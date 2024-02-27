import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled1/UI/Bottomnav.dart';

TextEditingController name=TextEditingController();
class CustomDialog extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
      elevation: 0.0,
      backgroundColor: Colors.white,
      child: dialogContent(context),
    );
  }

  Widget dialogContent(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10.w,right: 10.w,bottom: 10.h,top: 20.h),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[

          Stack(
            children:[ CircleAvatar(radius: 40.r,child:
            // Image.asset('assets/cash-on-delivery.png')
              Icon(Icons.credit_card_sharp,color: Colors.white,size: 40,),
              backgroundColor: Colors.black,),


              Positioned(left: 60.w,top: 5.h,
                child: CircleAvatar(radius: 10.r,child:
                // Image.asset('assets/cash-on-delivery.png')
                Center(child: Icon(Icons.check,color: Colors.white,size: 16,))
                  ,
                  backgroundColor: Colors.green,),
              ),
            ]
          ),
          Center(
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child:  Text('Successful!', style: TextStyle(color: Colors.black,fontSize: 28.sp,fontWeight: FontWeight.w900),)
              )//
          ),
          Center(
              child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child:  Text('you have successfully your \nConfirm payment send!', style: TextStyle(color: Colors.black,fontSize: 16.sp),textAlign: TextAlign.center,)
              )//
          ),

          SizedBox(height: 10.h),
          // Divider(thickness: 0.5,),
          InkWell(
            child: Container(
              padding: EdgeInsets.only(top: 5.h,bottom:5.h,left: 10.w,right: 10.w),
              decoration: BoxDecoration(
                color:Colors.black,
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
                  "Continue shopping",
                  style: TextStyle(color: Colors.white,fontSize: 20.sp,fontWeight: FontWeight.w700),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            onTap:(){
              Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(
                      builder: (context) => BottomNav()),
                      (route) => false
              );

            },
          ),
          SizedBox(height: 10.h),
        ],
      ),
    );
  }
}