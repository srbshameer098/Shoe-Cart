import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';












// --------------  Round Button  ------------------  //

class RoundButton extends StatelessWidget {
  final bool loading;
  final String title;
  final dynamic Icons;

  final VoidCallback onTap;

  const RoundButton(
      {Key? key,
      required this.title,
      required this.onTap,
      this.loading = false,
        this.Icons})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 50.w,
        decoration: BoxDecoration(
            color: Colors.black, borderRadius: BorderRadius.circular(25.r)),
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 15.w,vertical: 10.h),
          child: Row(crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
            children: [
             FaIcon(Icons,size: 24.sp,color: Colors.white,),
              SizedBox(width: 15.w,),
              Center(
                child: loading
                    ? CircularProgressIndicator(strokeWidth: 3,color: Colors.white,)
                    : Text(
                        title,
                        style: TextStyle(color: Colors.white, fontSize: 18.sp),
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}





// --------------  Tube Button  ------------------  //

class TubeButton extends StatelessWidget {
  final bool loading;
  final String title;
  final dynamic Icons;

  final VoidCallback onTap;

  const TubeButton(
      {Key? key,
        required this.title,
        required this.onTap,
        this.loading = false,
        this.Icons})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 50.w,
        decoration: BoxDecoration(
            color: Colors.black, borderRadius: BorderRadius.circular(25.r)),
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 15.w,vertical: 10.h),
          child: Row(crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
            children: [

              SizedBox(width: 15.w,),
              Center(
                child: loading
                    ? CircularProgressIndicator(strokeWidth: 3,color: Colors.white,)
                    : Text(
                  title,
                  style: TextStyle(color: Colors.white, fontSize: 22.sp,fontWeight: FontWeight.w700),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}











// --------------  Loading Button  ------------------  //
//
// class LoadingButton extends StatefulWidget {
//   final bool loading;
//   final String title;
//   final dynamic Icons;
//
//   final VoidCallback onTap;
//
//   const LoadingButton(
//       {Key? key,
//         required this.title,
//         required this.onTap,
//         this.loading = false,
//         this.Icons})
//       : super(key: key);
//
//   @override
//   State<LoadingButton> createState() => _LoadingButtonState();
// }
//
// class _LoadingButtonState extends State<LoadingButton> {
//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: () {
//         setState(() {
//           loading = true;
//         });
//         Future.delayed(Duration(seconds: 5),(){
//           setState(() {
//             var loading=false;
//           });
//            Navigator.push(context,
//                MaterialPageRoute(builder: (context)=>page2()));
//         });
//
//       },
//       child: Container(
//         height: 200.w,
//         decoration: BoxDecoration(
//             color: Colors.blue, borderRadius: BorderRadius.circular(10.r)),
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Row(crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               FaIcon(widget.Icons,size: 24.sp,),
//               SizedBox(width: 15.w,),
//               Center(
//                 child: loading==true
//                     ? Lottie.asset(
//                   'assets/animi.json',
//                   width: 200,
//                   height: 200,
//                   fit: BoxFit.fill,)
//                     : Text(
//                   widget.title,
//                   style: TextStyle(color: Colors.white, fontSize: 18.sp),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }


// --------------  Click Button  ------------------  //





class ClickButton extends StatelessWidget {
  final bool loading;
  final String title;
  final dynamic Icons;

  final VoidCallback onTap;

  const ClickButton(
      {Key? key,
        required this.title,
        required this.onTap,
        this.loading = false,
        this.Icons})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 50.w,
        decoration: BoxDecoration(
            color: Colors.black, borderRadius: BorderRadius.circular(10.r)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(width: 15.w,),
              Center(
                child: loading
                    ? CircularProgressIndicator(strokeWidth: 3,color: Colors.white,)
                    : Text(
                  title,
                  style: TextStyle(color: Colors.white, fontSize: 18.sp),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}