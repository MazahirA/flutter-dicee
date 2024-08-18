import 'package:flutter/material.dart';

import 'dice_page.dart';

void main() {
  runApp(const DiceApp());
}

class DiceApp extends StatefulWidget {
  const DiceApp({super.key});

  @override
  State<DiceApp> createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: DicePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

