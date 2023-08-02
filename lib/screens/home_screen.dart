import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    
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
            
          ],
        ),
      ),
    );
  }
}


