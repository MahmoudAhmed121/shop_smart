import 'package:flutter/material.dart';
import 'package:shop_smart/core/utils/text_style.dart';
import 'package:shop_smart/core/widgets/custom_text_widget.dart';

class CategoryRoundedProductWidget extends StatelessWidget {
  const CategoryRoundedProductWidget({super.key, required this.imgae, required this.text});
final String imgae,text;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(imgae,
        height: 50,
        width: 50,
        ),
        const SizedBox(
          height: 15,
        ),
        CustomTextWidget(text: text,style: Styles.textStyle18.copyWith(fontWeight: FontWeight.bold),)
      ],
    );
  }
}