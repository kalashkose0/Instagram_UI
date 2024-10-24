import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class UiHelper {
  static CusttomtextField(
      {required TextEditingController controller,
      required String text,
      required bool toHide,
      required TextInputType textInputType}) {
    return Container(
      height: 44,
      width: 343,
      decoration: BoxDecoration(
          color: Color(0XFF121212),
          border: Border.all(color: Color(0XFFFFFFFF)),
          borderRadius: BorderRadius.circular(5)),
      child: TextField(
        controller: controller,
        obscureText: toHide,
        keyboardType: textInputType,
        decoration: InputDecoration(
          hintText: text,
          hintStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.normal,
              color: Color(0XFFFFFFFF)),
          border: InputBorder.none,
        ),
      ),
    );
  }

  static CustomImage({required String imgurl}) {
    return Image.asset("assets/images/$imgurl");
  }

  static CustomButton(
      {required VoidCallback callback, required String buttonname}) {
    return SizedBox(
      height: 45,
      width: 343,
      child: ElevatedButton(
          onPressed: () {
            callback();
          },
          style: ElevatedButton.styleFrom(
              backgroundColor: Color(0XFF3797EF),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5))),
          child: Center(
            child: Text(
              buttonname,
              style: TextStyle(fontSize: 14, color: Colors.white),
            ),
          )),
    );
  }
}
