import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key,
    this.bgColor = Colors.white,
    this.textColor = Colors.black,
    required this.text,
    this.textSize = 20,
    this.mFontWeight = FontWeight.w700,
    this.width = double.infinity,
    this.height = 50,
    required this.onTap});

  final Color bgColor;
  final Color textColor;
  final String text;
  final double width;
  final double height;
  final double textSize;
  final FontWeight mFontWeight;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: bgColor,
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                color: textColor,
                fontSize: textSize,
                fontWeight: mFontWeight),
          ),
        ),
      ),
    );
  }
}
