import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_smart/provider/theme_provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Hello world",
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text("hello world"),
            ),
            SwitchListTile(
              title: const Text("Theme"),
              value: themeProvider.getDarkTheme,
              onChanged: (value) {
                themeProvider.saveTheme(themeValue: value);
              },
            )
          ],
        ),
      ),
    );
  }
}


