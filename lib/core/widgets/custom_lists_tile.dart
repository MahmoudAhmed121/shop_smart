import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:shop_smart/core/utils/text_style.dart';
import 'package:shop_smart/core/widgets/custom_text_widget.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile(
      {super.key,
      required this.text,
      required this.image,
      required this.function});
  final String text, image;
  final Function function;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        function();
      },
      leading: Image.asset(
        image,
        height: 30,
      ),
      title: CustomTextWidget(style: Styles.textStyle14, text: text),
      trailing: const Icon(
        IconlyLight.arrowRight2,
      ),
    );
  }
}
