
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../UI/Bottomnav.dart';
import '../UI/Home.dart';
import '../Widgets/RoundButton.dart';
import '../utiles/Utils.dart';

class Verify_code extends StatefulWidget {
  final String verificationId;
  const Verify_code({Key? key, required this.verificationId}) : super(key: key);

  @override
  State<Verify_code> createState() => _Verify_codeState();
}

class _Verify_codeState extends State<Verify_code> {
  bool loading =false ;
  final verificationCodeController = TextEditingController();
  final auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            SizedBox(height: 50.h,),
            Center(
              child: SizedBox(height: 150.h,width: 150.w,
                child: Image.asset("assets/Brand.png",
                ),
              ),
            ),
            SizedBox(height: 20.h,),
            Padding(
                padding: const EdgeInsets.all(5.0),
                child:  Text('Verify', style: TextStyle(color: Colors.black,fontSize: 26.sp,fontWeight: FontWeight.w600),)
            ),
            Padding(
                padding: const EdgeInsets.all(5.0),
                child:  Text('Enter the  Code', style: TextStyle(color: Colors.black,fontSize: 18.sp),textAlign: TextAlign.center,)
            ),


            SizedBox(height: 60.h,),
            TextFormField(
              keyboardType: TextInputType.phone,
              controller: verificationCodeController,
              decoration: InputDecoration(

                  hintText: '6 digit code'
              ),
            ),
            SizedBox(height: 80.h,),
            TubeButton(title: 'Verify',loading: loading, onTap: ()async{

              setState(() {
                loading = true ;
              });


    final credential = PhoneAuthProvider.credential(
                  verificationId: widget.verificationId,
                  smsCode: verificationCodeController.text.toString()
              );

              try{

                await auth.signInWithCredential(credential);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=> BottomNav()));
              }catch(e){

                setState(() {
                  loading = false ;
                });
                Utils().toastMessage(e.toString());

              }

            })
          ],
        ),
      ),
    );
  }
}
