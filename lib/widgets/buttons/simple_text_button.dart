import 'package:flutter/material.dart';

class SimpleTextButton extends StatelessWidget {
  final GestureTapCallback? onTap;
  final double height;
  final double width;
  final double borderRadius;
  final Color? backgroundColor;
  final Color textColor;
  final FontWeight fontWeight;
  final double fontSize;
  final String text;

  const SimpleTextButton({
    Key? key,
    this.textColor = Colors.black,
    this.fontWeight = FontWeight.normal,
    this.fontSize = 12,
    this.borderRadius = 15,
    this.width = double.infinity,
    this.onTap,
    this.height = 35,
    required this.backgroundColor,
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
          color: backgroundColor,
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
