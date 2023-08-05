import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:shop_smart/core/constants/app_color.dart';
import 'package:shop_smart/core/constants/app_constant.dart';
import 'package:shop_smart/core/utils/text_style.dart';
import 'package:shop_smart/core/widgets/custom_text_widget.dart';

class ProductWidget extends StatelessWidget {
  const ProductWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(3),
      child: InkWell(
        borderRadius: BorderRadius.circular(30),
        onTap: () {},
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(14),
              child: FancyShimmerImage(
                imageUrl: AppConstant.imageUrl,
                width: size.width,
                height: size.height * 0.22,
              ),
            ),
            Row(
              children: [
                Flexible(
                  flex: 5,
                  child: CustomTextWidget(
                    maxLines: 2,
                    textOverflow: TextOverflow.ellipsis,
                    style: Styles.textStyle18,
                    text: "Nike" * 10,
                  ),
                ),
                Flexible(
                    child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    IconlyLight.heart,
                  ),
                ))
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomTextWidget(
                  style: Styles.textStyle18,
                  text: "\$100",
                ),
                Material(
                  borderRadius: BorderRadius.circular(12),
                  color: AppColor.blueColor,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(12),
                    splashColor: AppColor.redColor,
                    onTap: () {},
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.add_shopping_cart,
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
