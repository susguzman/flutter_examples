import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('Ask me Anything'),
            centerTitle: true,
          ),
          backgroundColor: Colors.blue.shade200,
          body: Ball8(),
        ),
      ),
    );

class Ball8 extends StatefulWidget {
  @override
  _Ball8State createState() => _Ball8State();
}

class _Ball8State extends State<Ball8> {
  int responseNumber = 1;

  void changeResponse() {
    setState(() {
      responseNumber = Random().nextInt(5) + 1; //1-5
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                changeResponse();
              },
              child: Image.asset('images/ball$responseNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}
