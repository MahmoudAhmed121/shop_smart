import 'package:flutter/material.dart';
import 'package:shop_smart/core/services/assets_manager.dart';
import 'package:shop_smart/core/widgets/embty_bag.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomEmbtyBag(
        image: AssetsManager.shoppingBasket,
        title: "Your cart is empty",
        subtilte: 'Looks like you didn\'t add anything yet to cart',
        buttomText: "Shop now",
      ),
    );
  }
}
