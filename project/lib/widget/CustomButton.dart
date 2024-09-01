

import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomBotton extends StatelessWidget {
  CustomBotton({super.key,required this.text, this.onTap});

  String text;
  VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: 60,
        decoration: BoxDecoration(
            color: Colors.blueGrey,
            // border:Border.all(
            //   width: 3,
            //   color: Color(0xfffbffed),
            // ),
            borderRadius: BorderRadius.circular(15)
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            // color: Color(0xfffbffed)
          ),
        ),
      ),
    );
  }
}
