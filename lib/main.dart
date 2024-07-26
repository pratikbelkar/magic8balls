import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const Magic8balls());
}

class Magic8balls extends StatefulWidget {
  const Magic8balls({super.key});

  @override
  State<Magic8balls> createState() => _Magic8ballsState();
}

class _Magic8ballsState extends State<Magic8balls> {
  int ballnumber = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: GestureDetector(
        onTap: () {
          generateRandomNumber();
        },
        child: Scaffold(
          backgroundColor: Colors.blue,
          body: Center(
            child: Column(
              children: [
                const Text(
                  'Ask me anything',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Image.asset(
                    'images/magic8ball_$ballnumber.png',
                    width: 500,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void generateRandomNumber() {
    Random random = Random();
    ballnumber = random.nextInt(20) + 1;
    setState(() {});
  }
}
