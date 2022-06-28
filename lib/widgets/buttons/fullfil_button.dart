import 'package:flutter/material.dart';

class FullFillButton extends StatelessWidget {
  final GestureTapCallback? onTap;
  final double height;
  final double width;
  final double borderRadius;
  final Color color;
  final Color textColor;
  final FontWeight fontWeight;
  final double fontSize;
  final String text;

  const FullFillButton({
    Key? key,
    this.textColor = Colors.white,
    this.fontWeight = FontWeight.w500,
    this.fontSize = 15,
    this.borderRadius = 10,
    this.width = double.infinity,
    this.onTap,
    this.height = 50,
    required this.color,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: fontSize,
            fontWeight: fontWeight,
          ),
        ),
      ),
    );
  }
}
