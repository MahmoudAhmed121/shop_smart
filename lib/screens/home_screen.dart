import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:shop_smart/core/constants/app_color.dart';
import 'package:shop_smart/core/constants/app_constant.dart';
import 'package:shop_smart/core/services/assets_manager.dart';
import 'package:shop_smart/core/utils/text_style.dart';
import 'package:shop_smart/core/widgets/app_name_text_widget.dart';
import 'package:shop_smart/core/widgets/custom_text_widget.dart';
import 'package:shop_smart/core/widgets/products/categorie_rounded_product.dart';
import 'package:shop_smart/core/widgets/products/latest_arrival.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
          leading: Image.asset(AssetsManager.shoppingCart),
          title: const Padding(
            padding: EdgeInsets.all(8.0),
            child: CustomAppNameText(
              text: "Home screen",
            ),
          )),
      body: SizedBox(
        width: size.width,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: size.height * 0.24,
                  child: Swiper(
                    itemBuilder: (BuildContext context, int index) {
                      return Image.asset(
                        AppConstant.bannerImage[index],
                        fit: BoxFit.fill,
                      );
                    },
                    autoplay: true,
                    itemCount: AppConstant.bannerImage.length,
                    pagination: const SwiperPagination(
                      alignment: Alignment.bottomCenter,
                      builder: DotSwiperPaginationBuilder(
                        color: AppColor.greyColor,
                        activeColor: AppColor.redColor,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomTextWidget(
                  style: Styles.textStyle24.copyWith(fontWeight: FontWeight.bold),
                  text: "Latest arrival",
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: size.height * 0.2,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return const LatestArrivalProductsWidget();
                    },
                  ),
                ),
                CustomTextWidget(
                  style: Styles.textStyle24.copyWith(fontWeight: FontWeight.bold),
                  text: "Categories",
                ),
                const SizedBox(
                  height: 10,
                ),
                GridView.count(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  crossAxisCount: 4,
                  children:
                      List.generate(AppConstant.categoriesList.length, (index) {
                    return CategoryRoundedProductWidget(
                      imgae: AppConstant.categoriesList[index].image,
                      text: AppConstant.categoriesList[index].name,
                    );
                  }),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
