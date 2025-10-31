import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CategoryWidget extends StatelessWidget {
  CategoryWidget({this.text,this.color,this.onTap});
  String? text;
  Color? color;
  VoidCallback? onTap;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
            padding:const EdgeInsets.only(left: 16),
            alignment: Alignment.centerLeft,
            height: 70,
            width: double.infinity,
            color:color!,
            child: Text(
              text!,
              style:const TextStyle(color: Colors.white,
              fontSize: 18,
         ),
        ),
       ),
    );
  }
}