import 'package:flutter/material.dart';

class Category extends StatelessWidget {
   Category({super.key, this.text, this.color , this.onTap});
String? text;
Color? color;
VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.only(left:20 ),
        alignment: Alignment.centerLeft,
        color: color,
        height: 80,
        width: double.infinity,
        child:  Text(
          text!,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 25,
          ),
        ),
      ),
    );
  }
}