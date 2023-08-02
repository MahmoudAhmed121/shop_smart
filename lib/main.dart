import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_smart/core/utils/app_theme.dart';
import 'package:shop_smart/provider/theme_provider.dart';
import 'package:shop_smart/screens/bootom_bar_screen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ThemeProvider(),
        ),
      ],
      child: const ShopSmart(),
    ),
  );
}

class ShopSmart extends StatelessWidget {
  const ShopSmart({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.themeData(isDarkTheme: themeProvider.getDarkTheme, context: context),
      home: const BottomBarScreen(),
    );
  }
}
