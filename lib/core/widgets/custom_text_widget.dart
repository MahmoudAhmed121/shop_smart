import 'package:flutter/material.dart';

class CustomTextWidget extends StatelessWidget {
  const CustomTextWidget({super.key, required this.style, required this.text});
  final TextStyle? style;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style,
    );
  }
}
