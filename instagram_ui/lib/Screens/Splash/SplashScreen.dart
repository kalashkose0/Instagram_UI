import 'dart:async';
import 'package:flutter/material.dart';
import 'package:instagram_ui/widgets/uihelper.dart';

class SplashScreen extends StatefulWidget {
  @override
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => SplashScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("instagram_ui/assets/images/instagram.png"),
            // UiHelper.CustomImage(imgurl: "logo.png"),
            const SizedBox(
              
              height: 10,
            ),
            Image.asset("instagram_ui/assets/images/logo.png"),
          ],
        ),
      ),
    );
  }
}
