import 'package:flutter/material.dart';
Widget CustomButton(title, onTap,color) {
  return InkWell(
    onTap: onTap,
    splashColor: Colors.white,
    borderRadius: BorderRadius.circular(50),
    child: Ink(
      height: 30,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: color,
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 10,right: 10),
          child: Text(
            title,
            style: TextStyle(
                color: Colors.white, fontSize: 14, ),
          ),
        ),
      ),
    ),
  );
}