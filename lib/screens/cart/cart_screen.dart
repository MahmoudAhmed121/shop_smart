import 'package:flutter/material.dart';
import 'package:shop_smart/core/constants/app_color.dart';
import 'package:shop_smart/core/services/assets_manager.dart';
import 'package:shop_smart/core/widgets/app_name_text_widget.dart';
import 'package:shop_smart/core/widgets/embty_bag.dart';
import 'package:shop_smart/screens/cart/cart_widget.dart';

import 'buttom_checkout.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});
final bool isEmbty = false;
  @override
  Widget build(BuildContext context) {
    return isEmbty ? Scaffold(
      appBar:  AppBar(
        leading: Image.asset(AssetsManager.shoppingCart),
        title: const Padding(
          padding: EdgeInsets.all(8.0),
          child: CustomAppNameText( text: "Cart Screen",),
        )
      ),
      body: CustomEmbtyBag(
        image: AssetsManager.shoppingBasket,
        title: "Your cart is empty",
        subtilte: 'Looks like you didn\'t add anything yet to cart',
        buttomText: "Shop now",
      ),
    ): Scaffold(
      bottomSheet: const ButtomCheckOutWidget(),
     appBar:  AppBar(
        leading: Image.asset(AssetsManager.shoppingCart),
        title: const Padding(
          padding: EdgeInsets.all(8.0),
          child: CustomAppNameText( text: "Cart Screen",),
        ),
        actions: [
          IconButton(onPressed: (){

          }, icon: const Icon(Icons.delete_outline_rounded,
          color: AppColor.redColor,

          ),
          ),
        ],
      ),
      body: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: 15,
        itemBuilder: (context, index) {
        
        return const CartWidget();
      },),
    );
  }
}
