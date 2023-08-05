import 'package:flutter/material.dart';

class CustomTextWidget extends StatelessWidget {
  const CustomTextWidget({super.key, required this.style, required this.text, this.maxLines, this.textOverflow});
  final TextStyle? style;
  final String text;
  final int? maxLines;
  final TextOverflow? textOverflow;
  @override
  Widget build(BuildContext context) {
    return Text(
      overflow:textOverflow ,
      text,
      maxLines: maxLines,
      style: style,
    );
  }
}
