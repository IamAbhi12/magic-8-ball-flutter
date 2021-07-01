import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blue,
          appBar: AppBar(
            title: Text('Ask Me Anything'),
            backgroundColor: Colors.blue[900],
          ),
          body: Magic_8_Ball(),
        ),
      ),
    );

class Magic_8_Ball extends StatefulWidget {
  @override
  _Magic_8_BallState createState() => _Magic_8_BallState();
}

class _Magic_8_BallState extends State<Magic_8_Ball> {
  int num;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          setState(() {
            num = Random().nextInt(5) + 1;
          });
        },
        child: Image.asset('images/ball$num.png'),
      ),
    );
  }
}
