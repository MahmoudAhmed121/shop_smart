import 'package:flutter/material.dart';
import 'package:shop_smart/core/constants/app_color.dart';
import 'package:shop_smart/core/utils/text_style.dart';
import 'package:shop_smart/core/widgets/custom_Button_widget.dart';
import 'package:shop_smart/core/widgets/custom_text_widget.dart';

class ButtomCheckOutWidget extends StatelessWidget {
  const ButtomCheckOutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        border: const Border(top: BorderSide(color: AppColor.greyColor,width: 1))
      ),
      child: SizedBox(
        height: kBottomNavigationBarHeight +10,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomTextWidget(
                      style: Styles.textStyle20,
                      text: "Total (6 products/ 6 iteams)",
                    ),
                    CustomTextWidget(
                      style: Styles.textStyle20,
                      text: "\$100",
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 120,
                child: CustomButton(onPressed: (){}, text: "Check out",
                backgroundColor: AppColor.blueColor,
                         spaceSizeText: 20,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
