import 'package:flutter/material.dart';
import 'package:shop_smart/core/constants/app_color.dart';
import 'package:shop_smart/core/widgets/custom_Button_widget.dart';
import 'package:shop_smart/core/widgets/custom_text_widget.dart';

import '../utils/text_style.dart';

class CustomEmbtyBag extends StatelessWidget {
  const CustomEmbtyBag({super.key, required this.image, required this.title, required this.subtilte, required this.buttomText});
final String image,title,subtilte,buttomText;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
        width: size.width,
        child: Padding(
          padding: const EdgeInsets.only(top: 50),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset(
                 image,
                  height: size.height * 0.35,
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomTextWidget(
                  style: Styles.textStyle40.copyWith(
                    color: AppColor.redColor,
                  ),
                  text: "Oops",
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomTextWidget(
                  style: Styles.textStyle24,
                  text: title,
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomTextWidget(
                  style: Styles.textStyle20,
                  text: subtilte,
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 130,vertical: 10),
                  child: CustomButton(
                 
                    onPressed: () {},
                    text: buttomText,
                  ),
                )
              ],
            ),
          ),
        ),
      );
  }
}