import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:shop_smart/core/utils/text_style.dart';
import 'package:shop_smart/core/widgets/custom_text_widget.dart';

import '../../core/constants/app_color.dart';

class CartWidget extends StatelessWidget {
  const CartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return FittedBox(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: FancyShimmerImage(
                imageUrl:
                    "https://image.tmdb.org/t/p/w500/oqP1qEZccq5AD9TVTIaO6IGUj7o.jpg",
                width: size.height * 0.2,
                height: size.height * 0.2,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            IntrinsicWidth(
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: size.width * 0.6,
                        child: CustomTextWidget(
                          style: Styles.textStyle20,
                          text: "mahmouuud" * 10,
                          maxLines: 2,
                        ),
                      ),
                      Column(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              IconlyLight.closeSquare,
                              color: AppColor.redColor,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              IconlyLight.heart,
                              color: AppColor.redColor,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomTextWidget(
                        style: Styles.textStyle20.copyWith(
                          color: AppColor.blueColor,
                        ),
                        text: "\$100",
                      ),
                      OutlinedButton.icon(
                        onPressed: () {},
                        icon: const Icon(
                          IconlyLight.arrowDown2,
                          color: AppColor.blueColor,
                        ),
                        label:  Text(
                          "Qty 6",
                          style: Styles.textStyle16.copyWith(color: AppColor.blueColor),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
