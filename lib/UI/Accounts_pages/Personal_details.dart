import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class Personal_details extends StatefulWidget {
  const Personal_details({Key? key}) : super(key: key);

  @override
  State<Personal_details> createState() => _Personal_detailsState();
}

class _Personal_detailsState extends State<Personal_details> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
body: Padding(
  padding:  EdgeInsets.symmetric(horizontal: 15.w,vertical: 40.h),
  child: Column(
    children: [

      Center(
        child: Container(
          width: 340,
          height: 250,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(width: .5,color: Colors.grey),
              color: Colors.white),
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 150,
                child: AvatarGlow(
                  startDelay: const Duration(milliseconds: 1000),
                  glowColor: Colors.grey,
                  glowShape: BoxShape.circle,
                  glowCount: 2,
                  glowRadiusFactor: 0.2,
                  // // animate: _animate,
                  curve: Curves.fastOutSlowIn,
                  // endRaduis:100.0,

                  child:  const Material(
                    elevation: 8.0,
                    shape: CircleBorder(),
                    color: Colors.transparent,
                    child: CircleAvatar(
                      backgroundImage: AssetImage("assets/avatar.JPG"),
                      radius: 50.0,
                    ),
                  ),
                ),
              ),



              SizedBox(height: 10.h,),


              TextButton(onPressed: (){}, child:  Container(
                  width: 60.w,
                  height: 40.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                          width: 1, color: Colors.grey.shade900),
                      color: Color(0xfd000000)),
                  child: Padding(
                    padding:
                    EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      children: [
                        Text(
                          'Edit',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  )),)

              // SizedBox(height: 10.h,),
            ],
          ),
        ),
      ),

      SizedBox(height: 10.h,),

      Container(
        width: 340,
        height: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(width: .5,color: Colors.grey),
            color: Colors.white),
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 10.h),
          child: Row(
            children: [
              Text('Name  :',
                  style: TextStyle(
                    fontSize: 23.sp,
                    fontWeight: FontWeight.w400,
                  )
              ),
              SizedBox(width: 5.w,),
              SizedBox(width: 206,
                child: Text('Pablo',
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w700,
                    )
                ),
              ),
              Icon(Icons.edit,size: 16,)
            ],
          ),
        ),
      ),



      SizedBox(height: 10.h,),

      Container(
        width: 340,
        height: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(width: .5,color: Colors.grey),
            color: Colors.white),
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 10.h,vertical: 10),
          child: Row(
            children: [
              Text('Email   :',
                  style: TextStyle(
                    fontSize: 23.sp,
                    fontWeight: FontWeight.w400,
                  )
              ),
              SizedBox(width: 5.w,),
              SizedBox(width: 213.w,
                child: Text('Example@gmail.com',
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w400,
                    )
                ),
              ),
              Icon(Icons.edit,size: 16.sp,)
            ],
          ),
        ),
      ),



      SizedBox(height: 10.h,),

      Container(
        width: 340,
        height: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(width:.5.w,color: Colors.grey),
            color: Colors.white),
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 10.h),
          child: Row(
            children: [
              Text('Phone  :',
                  style: TextStyle(
                    fontSize: 23.sp,
                    fontWeight: FontWeight.w400,
                  )
              ),
              SizedBox(width: 5.w,),
              SizedBox(width: 210.w,
                child: Text('9999999999',
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w400,
                    )
                ),
              ),
              Icon(Icons.edit,size: 16,)
            ],
          ),
        ),
      ),
    ],
  ),
),
    );
  }
}
