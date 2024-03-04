
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../Widgets/RoundButton.dart';
import '../utiles/Utils.dart';
import 'login_screen.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {

  bool loading = false;
  final formkey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  FirebaseAuth auth= FirebaseAuth.instance;


  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }
  bool value = false;
  bool isVisible=true;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(



      body: Padding(
        padding:  EdgeInsets.only(left:20.w,top: 20.h,right: 20.w),
        child: SingleChildScrollView(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
          
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
                  child:  Text('Sign Up', style: TextStyle(color: Colors.black,fontSize: 28.sp,fontWeight: FontWeight.w700),)
              ),
              Padding(
                  padding: const EdgeInsets.all(5.0),
                  child:  Text('Create an new account', style: TextStyle(color: Colors.black,fontSize: 18.sp),textAlign: TextAlign.center,)
              ),
              SizedBox(height: 50.h,),
          
              Form(
                  key: formkey,
                  child: Column(
                    children: [
          
          
          
          
          
          
                      TextFormField(
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.emailAddress,
                        controller: emailController,
                        decoration: InputDecoration(
                            // hintText: 'Email',
                          label: Text('Email',style:TextStyle(color: Colors.black,fontSize: 23.sp,fontWeight: FontWeight.w400) ,
                            // helperText: 'enter email e.g: example@gmail.com',
                          )
                        ),
                        validator: (value){
                          if(value!.isEmpty){
                            return 'Enter email';
                          }return null;
                        },
                      ),
                      SizedBox(height: 15.h),
          
                      TextFormField(
                        textInputAction: TextInputAction.done,
                        keyboardType: TextInputType.text,
                        controller: passwordController,
                        obscureText: isVisible,
                        decoration: InputDecoration(
                          label: Text('Password',style:TextStyle(color: Colors.black,fontSize: 23.sp,fontWeight: FontWeight.w400) ,
                            // hintText: '',
                            // helperText: 'enter password e.g: 123456',
                          ),
                            suffixIcon:  GestureDetector(onTap: (){
                              setState((){
                                isVisible=!isVisible;
                              });
                            },
                              child:isVisible==false? const FaIcon(
                                Icons.remove_red_eye_outlined,size: 24,
                                color: Colors.grey,
                              ):const FaIcon(FontAwesomeIcons.eyeSlash,size: 18,color: Colors.grey,),
                            )
          
                        ),
                        validator: (value){
                          if(value!.isEmpty){
                            return 'Enter password';
                          }return null;
                        },
                      ),
                    ],
                  )),
          
          
              SizedBox(height: 100.h),
              TubeButton(
                  title: 'Sign up',
                  loading: loading,
                  onTap: () {
                    if (formkey.currentState!.validate()){
                     setState(() {
                       loading =true;
                     });
          
                      auth.createUserWithEmailAndPassword(
                          email: emailController.text.toString(),
                          password: passwordController.text.toString()).then((value){
                        setState(() {
                          loading =false;
                        });
                      }).onError((error, stackTrace) {
          
                Utils().toastMessage(error.toString());
                setState(() {
          loading =false;
                });
                      });
                    }
                  }
          
              ),
              SizedBox(height: 50.h,),
              Row(crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Already have an account ?  ',style: TextStyle(color: Colors.black)),
          
          
                  GestureDetector(onTap: (){
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder:(context) =>HomePage()));
                  },
                      child: Text('Login ',style: TextStyle(color: Colors.blueAccent),))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
