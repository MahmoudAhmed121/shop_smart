import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:shop_smart/core/constants/app_color.dart';
import 'package:shop_smart/core/constants/app_constant.dart';
import 'package:shop_smart/core/utils/text_style.dart';
import 'package:shop_smart/core/widgets/app_name_text_widget.dart';
import 'package:shop_smart/core/widgets/custom_Button_widget.dart';
import 'package:shop_smart/core/widgets/custom_text_widget.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});
  static const String productDetails = "/productDetails";
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.canPop(context) ? Navigator.pop(context) : null;
            },
            icon: const Icon(IconlyLight.arrowLeft2)),
        centerTitle: true,
        title: const Padding(
          padding: EdgeInsets.all(8.0),
          child: CustomAppNameText(
            text: "Shop smart",
          ),
        ),
      ),
      body: SizedBox(
        width: size.width,
        child: Column(
          children: [
            FancyShimmerImage(
              imageUrl: AppConstant.imageUrl,
              width: size.width,
              height: size.height * 0.38,
              boxFit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(
                        child: CustomTextWidget(
                          maxLines: 2,
                          textOverflow: TextOverflow.ellipsis,
                          style: Styles.textStyle20
                              .copyWith(fontWeight: FontWeight.bold),
                          text: "Nike" * 20,
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      CustomTextWidget(
                        style: Styles.textStyle20.copyWith(
                            color: AppColor.blueColor,
                            fontWeight: FontWeight.bold),
                        text: "\$100",
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Material(
                          shape: const CircleBorder(),
                          color: AppColor.greyColor,
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              IconlyLight.heart,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: SizedBox(
                            height: kBottomNavigationBarHeight - 5,
                            child: CustomButton(
                              backgroundColor: AppColor.lightBluekColor,
                              spaceSizeText: 80,
                              onPressed: () {},
                              text: "Add to cart",
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomTextWidget(
                        style: Styles.textStyle20
                            .copyWith(fontWeight: FontWeight.bold),
                        text: "About is iteam",
                      ),
                      CustomTextWidget(
                        style: Styles.textStyle20
                            .copyWith(fontWeight: FontWeight.bold),
                        text: "In Phones",
                      ),
                    ],
                  ), const SizedBox(
                    height: 25,
                  ),
                  CustomTextWidget(style: Styles.textStyle20, text: "text" * 30)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
