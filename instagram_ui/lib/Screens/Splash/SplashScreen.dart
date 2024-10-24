import 'package:flutter/material.dart';
import 'package:instagram_ui/widgets/uihelper.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UiHelper.CustomImage(imgurl: "instagram.png"),
            SizedBox(
              height: 10,
            ),
            UiHelper.CustomImage(imgurl: "logo.png"),
          ],
        ),
      ),
    );
  }
}
