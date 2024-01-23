import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../firebase_services/splash_services.dart';




class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  SplashServices SplashScreen = SplashServices();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SplashScreen.isLogin(context);
  }
  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: Column(crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              'Welcome'
            ),
          )
        ],
      ),
    );
  }
}
