import 'package:dicee_flutter/dice_page/dice_page_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Dicee',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: const Text(
              "Dicee",
            ),
            backgroundColor: Colors.red,
          ),
          backgroundColor: Colors.red,
          body: const DicePageView(),
        ));
  }
}
