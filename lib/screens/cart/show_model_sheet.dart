import 'package:flutter/material.dart';
import 'package:shop_smart/core/utils/text_style.dart';

import '../../core/constants/app_color.dart';

class ShowModelSheat extends StatelessWidget {
  const ShowModelSheat({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 10,),
        Container(
          width: 50,
          height: 10,
          decoration:  BoxDecoration(
            color: AppColor.greyColor,
            borderRadius: BorderRadius.circular(10)
          ),
        ),
        const SizedBox(height: 10,),
        Expanded(
          child: ListView.builder(
          
            itemCount: 20,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
        
                },
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "${index + 1}",
                      style: Styles.textStyle22,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
