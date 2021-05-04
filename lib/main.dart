import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    );
  }
}

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [

        Expanded(
          child:
        Image(
          image: AssetImage(
            'images/dice1.png',
          ),
        ),
        ),
        Expanded(child:
        Image(
          image: AssetImage(
            'images/dice1.png',
          ),
        ),
        )

      ],
    );
  }
}
