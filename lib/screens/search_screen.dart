import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:shop_smart/core/constants/app_color.dart';
import 'package:shop_smart/core/services/assets_manager.dart';
import 'package:shop_smart/core/widgets/app_name_text_widget.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  late TextEditingController scrollController;
  @override
  void initState() {
    super.initState();
    scrollController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();

    scrollController.dispose();
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
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: TextField(
                controller: scrollController,
                decoration: InputDecoration(
                  prefixIcon: const Icon(
                    IconlyLight.search,
                 
                  ),
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        scrollController.clear();
                      });
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
                onSubmitted: (value) {
             
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
