import 'package:flutter/material.dart';
import 'package:shop_smart/core/constants/app_color.dart';
import 'package:shop_smart/core/utils/text_style.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.icon,
    this.fontWeight,
    this.backgroundColor = AppColor.redColor,
    this.spaceSizeText = 25,
  });
  final double? spaceSizeText;
  final VoidCallback onPressed;
  final String text;
  final IconData? icon;
  final FontWeight? fontWeight;
  final Color? backgroundColor;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 57,
      width: MediaQuery.of(context).size.width,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        onPressed: onPressed,
        child: Row(
          children: [
            icon == null
                ? const SizedBox()
                : Icon(
                    icon,
                    color: Colors.white,
                  ),
             SizedBox(
              width: spaceSizeText,
            ),
            Text(
              text,
              style: Styles.textStyle16.copyWith(
                fontWeight: fontWeight,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
