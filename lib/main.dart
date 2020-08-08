import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Magic(),
        debugShowCheckedModeBanner: false,
      ),
    );

class Magic extends StatefulWidget {
  @override
  _MagicState createState() => _MagicState();
}

class _MagicState extends State<Magic> {
  int answer = 1;

  void randomAnswer() {
    answer = Random().nextInt(5) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Magic 8 Ball App'),
      ),
      body: Container(
        color: Colors.blue[100],
        child: Center(
          child: GestureDetector(
            onTap: () {
              setState(() => randomAnswer());
            },
            child: Image.asset('images/ball$answer.png'),
          ),
        ),
      ),
    );
  }
}
