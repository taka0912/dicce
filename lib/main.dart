import 'dart:io';

import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: Text('Dicee'),
            backgroundColor: Colors.pink,
          ),
          body: DicePage(),
        ),
      ));
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int LeftDiceNumber = 1;
  int RightDiceNumber = 1;

  void changeDiceFace(){
    LeftDiceNumber = Random().nextInt(6) + 1;
    RightDiceNumber = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {

    return Center(
      child: Row(
        children: <Widget> [
          Expanded(
            child: FlatButton(
              onPressed: (){
                setState(() {
                  changeDiceFace();
                });
                },
              child: Image.asset(
                  'images/dicce$LeftDiceNumber.jpg'
              ),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: (){
                setState(() {
                  changeDiceFace();
                });
                },
              child: Image.asset(
                'images/dicce$RightDiceNumber.jpg',
              ),
            ),
          ),
        ],
      ),
    );
  }
}

