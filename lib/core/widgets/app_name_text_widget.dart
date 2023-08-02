import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:shop_smart/core/constants/app_color.dart';
import 'package:shop_smart/core/utils/text_style.dart';
import 'package:shop_smart/core/widgets/custom_text_widget.dart';

class CustomAppNameText extends StatelessWidget {
  const CustomAppNameText({super.key, required this.text});
final String text;
  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      period: const Duration(seconds: 5),
      baseColor: AppColor.greyColor,
      highlightColor: AppColor.redColor,
      child: CustomTextWidget(style: Styles.textStyle22, text: text));
  }
}