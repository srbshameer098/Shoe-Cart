import 'package:firebase/Widgets/RoundButton.dart';
import 'package:firebase/Auth/Verify_code.dart';
import 'package:firebase/UI/utiles/Utils.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Center(
          child: Text('Phone'),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          children: [
            SizedBox(height: 60.h,),
            TextFormField(
              keyboardType: TextInputType.phone,
              controller: PhoneNumberController,
              decoration: InputDecoration(

                hintText: '+91 00000 00000'
              ),
            ),
            SizedBox(height: 80.h,),
            RoundButton(title: 'Next',loading: loading, onTap: (){

              setState(() {
                loading = true ;
              });

              auth.verifyPhoneNumber(
                phoneNumber: PhoneNumberController.text,
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
