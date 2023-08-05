import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:shop_smart/core/constants/app_color.dart';
import 'package:shop_smart/core/services/assets_manager.dart';
import 'package:shop_smart/core/widgets/app_name_text_widget.dart';
import 'package:dynamic_height_grid_view/dynamic_height_grid_view.dart';

import '../core/widgets/products/product_widget.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  late TextEditingController textEditingController;

  @override
  void initState() {
    super.initState();
    textEditingController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();

    textEditingController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset(AssetsManager.shoppingCart),
        title: const Padding(
          padding: EdgeInsets.all(8.0),
          child: CustomAppNameText(
            text: "Search Screen",
          ),
        ),
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: TextField(
                controller: textEditingController,
                decoration: InputDecoration(
                  prefixIcon: const Icon(
                    IconlyLight.search,
                  ),
                  suffixIcon: IconButton(
                    onPressed: () {
                      textEditingController.clear();
                      FocusScope.of(context).unfocus();
                    },
                    icon: const Icon(
                      IconlyLight.closeSquare,
                      color: AppColor.redColor,
                    ),
                  ),
                ),
                onTapOutside: (event) {
                  FocusScope.of(context).unfocus();
                },
                onSubmitted: (value) {},
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: DynamicHeightGridView(
                       
                itemCount: 120,
                crossAxisCount: 2,
                builder: (ctx, index) {
                  return const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: ProductWidget(),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
