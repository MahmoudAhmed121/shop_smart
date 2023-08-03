import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_smart/core/services/assets_manager.dart';
import 'package:shop_smart/core/utils/text_style.dart';
import 'package:shop_smart/core/widgets/app_name_text_widget.dart';
import 'package:shop_smart/core/widgets/custom_Button_widget.dart';
import 'package:shop_smart/core/widgets/custom_lists_tile.dart';
import 'package:shop_smart/core/widgets/custom_text_widget.dart';

import '../provider/theme_provider.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset(AssetsManager.shoppingCart),
        title: const Padding(
          padding: EdgeInsets.all(8.0),
          child: CustomAppNameText( text: "Profile Screen",),
        )
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Visibility(
              visible: false,
              child: CustomTextWidget(
                text: "Please login to access",
                style: Styles.textStyle16,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 2,
                        color: Theme.of(context).colorScheme.background,
                      ),
                      shape: BoxShape.circle,
                      color: Theme.of(context).cardColor,
                      image: const DecorationImage(
                          image: NetworkImage(
                            "https://www.advanced-healthclinic.com/wp-content/uploads/2020/12/blank-profile-picture-973460_1280-680x680.png",
                          ),
                          fit: BoxFit.fill),
                    ),
                  ),
                  const SizedBox(
                    width: 7,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomTextWidget(
                          style: Styles.textStyle16, text: "Mahmoud Ahmed"),
                      const SizedBox(
                        height: 5,
                      ),
                      CustomTextWidget(
                          style: Styles.textStyle16,
                          text: "m7moud1212001@gmail.com")
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomTextWidget(
                      style: Styles.textStyle18.copyWith(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      text: "General"),
                  CustomListTile(
                    function: () {},
                    image: AssetsManager.orderSvg,
                    text: "All orders",
                  ),
                  CustomListTile(
                    function: () {},
                    image: AssetsManager.wishlistSvg,
                    text: "Wishlist",
                  ),
                  CustomListTile(
                    function: () {},
                    image: AssetsManager.recent,
                    text: "Viewed recently",
                  ),
                  CustomListTile(
                    function: () {},
                    image: AssetsManager.address,
                    text: "Address",
                  ),
                  const Divider(
                    thickness: 1,
                  ),
                  CustomTextWidget(style: Styles.textStyle18.copyWith(
                    fontWeight: FontWeight.bold
                  ), text: "Settings"),
                  SwitchListTile(
                    secondary: Image.asset(
                      AssetsManager.theme,
                      height: 30,
                    ),
                    activeColor: themeProvider.getDarkTheme
                        ? Colors.white
                        : Colors.black,
                    title: Text(themeProvider.getDarkTheme
                        ? "Dark mode"
                        : "Light mode"),
                    value: themeProvider.getDarkTheme,
                    onChanged: (value) {
                      themeProvider.saveTheme(themeValue: value);
                    },
                  ),
                  const Divider(
                    thickness: 1,
                  ),
                    CustomTextWidget(style: Styles.textStyle18.copyWith(
                    fontWeight: FontWeight.bold
                  ), text: "Others"),
                  CustomListTile(text: "Privacy & Policy", image:AssetsManager.privacy, function: (){}),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 130),
              child: CustomButton(onPressed: (){},  icon: Icons.login ,text: "Logout",),)
          ],
        ),
      ),
    );
  }
}
