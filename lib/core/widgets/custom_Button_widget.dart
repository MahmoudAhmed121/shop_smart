import 'package:flutter/material.dart';
import 'package:shop_smart/core/utils/text_style.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.icon,
  });
  final VoidCallback onPressed;
  final String text;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 57,
      width: MediaQuery.of(context).size.width,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: Colors.red,
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
            const SizedBox(
              width: 25,
            ),
            Text(
              text,
              style: Styles.textStyle16.copyWith(
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
