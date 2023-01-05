import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: ballPage(),
      ),
    );

class ballPage extends StatelessWidget {
  const ballPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: Text('Ask Me Anything'),
      ),
      backgroundColor: Colors.blue,
      body: ball(),
    );
  }
}

class ball extends StatefulWidget {
  const ball({Key? key}) : super(key: key);

  @override
  State<ball> createState() => _ballState();
}

class _ballState extends State<ball> {
  int ballNumber = 0;
  void updateBallNumber() {
    ballNumber = Random().nextInt(5) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          setState(() {
            updateBallNumber();
          });
        },
        child: Image.asset('images/ball$ballNumber.png'),
      ),
    );
  }
}
