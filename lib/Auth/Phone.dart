
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Widgets/RoundButton.dart';
import '../utiles/Utils.dart';
import 'Verify_code.dart';

class LogInWithPhoneNumber extends StatefulWidget {
  const LogInWithPhoneNumber({Key? key}) : super(key: key);

  @override
  State<LogInWithPhoneNumber> createState() => _LogInWithPhoneNumberState();
}

class _LogInWithPhoneNumberState extends State<LogInWithPhoneNumber> {

  bool loading =false ;
  final PhoneNumberController = TextEditingController();
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
                child:  Text('Login with Phone', style: TextStyle(color: Colors.black,fontSize: 26.sp,fontWeight: FontWeight.w600),)
            ),
            Padding(
                padding: const EdgeInsets.all(5.0),
                child:  Text('Enter the  phone Number', style: TextStyle(color: Colors.black,fontSize: 18.sp),textAlign: TextAlign.center,)
            ),

            SizedBox(height: 60.h,),
            TextFormField(
              keyboardType: TextInputType.phone,
              controller: PhoneNumberController,
              decoration: InputDecoration(
                prefixText: '+91',
                hintText: '99999 99999'
              ),
            ),
            SizedBox(height: 80.h,),
            TubeButton(title: 'Next',loading: loading, onTap: (){

              setState(() {
                loading = true ;
              });

              auth.verifyPhoneNumber(
                phoneNumber: "+91${PhoneNumberController.text}",
                  verificationCompleted: (_){

                  setState(() {
                    loading = false ;
                  });

                  },
                  verificationFailed: (e){
                    setState(() {
                      loading = false ;
                    });
                  Utils().toastMessage(e.toString());
                  },
                  codeSent: (String verificationId , int? token){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>Verify_code(verificationId: verificationId,)));
                  setState(() {
                    loading = false ;
                  });
                  },
                  codeAutoRetrievalTimeout: (e){
                  Utils().toastMessage(e.toString());
                  setState(() {
                    loading = false ;
                  });
                  });
            })
          ],
        ),
      ),
    );
  }
}
