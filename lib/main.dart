import 'package:flutter/material.dart';
import 'dart:math';

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

class DicePage extends StatefulWidget {
  const DicePage({Key key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  Dice left = new Dice();
  Dice right = new Dice();
  int lnum = 1;
  int rnum = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
              child: TextButton(
            onPressed: () {
              setState(() {
                newNumbers();
              });
            },
            child: Image(
              image: AssetImage(
                'images/dice$lnum.png',
              ),
            ),
          )),
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  newNumbers();
                });
              },
              child: Image(
                image: AssetImage(
                  'images/dice$rnum.png',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void newNumbers() {
    lnum = left.num;
    rnum = right.num;
    print('left = $lnum and righ = $rnum');
  }
}

class Dice {
  int number = 0;

  roll() {
    this.number = Random().nextInt(6) + 1;
  }

  int get num {
    this.roll();
    return this.number;
  }
}

// class DicePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     int lftnum = 3;
//
//     return Row(
//       children: [
//         Expanded(
//           child: Image(
//           image: AssetImage(
//             'images/dice$lftnum.png',
//           ),
//         ),
//         ),
//         Expanded(child:
//         Image(
//           image: AssetImage(
//             'images/dice1.png',
//           ),
//         ),
//         )
//
//       ],
//     );
//   }
// }
