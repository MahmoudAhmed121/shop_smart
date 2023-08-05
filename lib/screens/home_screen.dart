import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:shop_smart/core/constants/app_color.dart';
import 'package:shop_smart/core/constants/app_constant.dart';
import 'package:shop_smart/core/services/assets_manager.dart';
import 'package:shop_smart/core/widgets/app_name_text_widget.dart';

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
        width:size.width,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Column(
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
                    builder: DotSwiperPaginationBuilder(color: AppColor.greyColor,activeColor: AppColor.redColor)
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
