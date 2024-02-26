import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled1/UI/Page1.dart';


import 'Home.dart';
class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color(0xffffffff),
      appBar: AppBar(
        // title: const Center(child: Text('Categories')),
        actions: [
          IconButton(
              icon: Icon(Icons.search_outlined), onPressed: () {  },),
          const SizedBox(
            width: 10,
          )
        ],
      ),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 25),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20.h,),
            Text('Categories',
                style: TextStyle(
                  fontSize: 24.sp,
                  color: Colors.black,
                  fontWeight: FontWeight.w800,
                )),
            SizedBox(height: 20.h,),
            Expanded(

              child: GestureDetector(
                onTap: (){
                   Navigator.of(context)
                      .push(MaterialPageRoute(builder: (builder)=>Page1()
                  ));
                },
                child: ListView.separated(

                  itemCount: puma.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      // width: 100.w,
                      // height: 70.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                           border: Border.all(width: 1,color: Colors.grey),
                          color: Color(0xfd000000)),
                      child: Padding(
                        padding:  EdgeInsets.symmetric(horizontal: 10.h),
                        child: Row(
                          children: [
                            SizedBox( width: 76.65777587890625.w,
                              height: 83.19111633300781.h,
                              child: Image.asset(
                                logo[index],
                                width: 76.65777587890625.w,
                                height: 83.19111633300781.h,
                              ),
                            ),
                            SizedBox(width: 120.w,
                              child: Text(name[index],
                                  style: TextStyle(
                                    fontSize: 18.sp,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                  )),
                            ),

                            SizedBox(width: 10.w,),


                            Text('${200} Products',
                                style: TextStyle(
                              fontSize: 13.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            )),



                          ],
                        ),

                      ),

                    );

                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      height: 20.h,
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
