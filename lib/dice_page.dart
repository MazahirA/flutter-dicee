import 'dart:math';
import 'package:flutter/material.dart';

class DicePage extends StatelessWidget {
  const DicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red.shade600,
      appBar: AppBar(
        toolbarHeight: 50.0,
        backgroundColor: Colors.red.shade700,
        title: Text(
          'Dice',
          style: TextStyle(
              fontFamily: 'Pacifico',
              letterSpacing: 10.0,
              fontSize: 30.0,
              color: Colors.red.shade100),
        ),
        centerTitle: true,
      ),
      body: const Dicee(),
    );
  }
}

class Dicee extends StatefulWidget {
  const Dicee({super.key});

  @override
  State<Dicee> createState() => _DiceeState();
}

class _DiceeState extends State<Dicee> {
   int leftDiceNumber = 1;
   int rightDiceNumber= 6;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: InkWell(
                child: Image.asset('images/dice$leftDiceNumber.png'),
                onTap: () {
                  changeDiceFace();
                },
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: InkWell(
                child: Image.asset('images/dice$rightDiceNumber.png'),
                onTap: () {
                  changeDiceFace();
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  ///Change dice number and reflect on screen:
  void changeDiceFace(){
    setState(() {
      leftDiceNumber=Random().nextInt(6)+1;
      rightDiceNumber=Random().nextInt(6)+1;
    });
  }
}
