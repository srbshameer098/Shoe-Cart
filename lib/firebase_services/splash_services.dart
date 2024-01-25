import 'dart:async';



import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Auth/login_screen.dart';
import '../UI/Bottomnav.dart';
import '../UI/Home.dart';

class SplashServices {
  void isLogin(BuildContext context) {
    final auth = FirebaseAuth.instance;

    final user = auth.currentUser;

    if (user != null) {
      Timer(
          const Duration(seconds: 2),
          () => Navigator.pushAndRemoveUntil(
              context, MaterialPageRoute(builder: (context) => BottomNav()), (Route<dynamic> route) => false));
    } else {
      Timer(
          const Duration(seconds: 2),
          () => Navigator.pushAndRemoveUntil(
              context, MaterialPageRoute(builder: (context) => HomePage()),(Route<dynamic> route) => false));
    }
  }
}
