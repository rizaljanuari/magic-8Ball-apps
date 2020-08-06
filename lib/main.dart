import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: MainPage(),
        debugShowCheckedModeBanner: false,
      ),
    );

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Magic 8 Ball App'),
      ),
      body: Container(
        child: Center(
          child: Image.asset('images/ball1.png'),
        ),
      ),
    );
  }
}
