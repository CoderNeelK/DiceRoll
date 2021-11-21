import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
          home: Scaffold(
            backgroundColor: Colors.indigo,
            appBar: AppBar(
              title:Text('Dicee'),
              backgroundColor: Colors.indigo,
         ),
          body: _DicePage(),
      )
  )
  );
}

class _DicePage extends StatefulWidget {
  const _DicePage({Key? key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}


class _DicePageState extends State<_DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void changeDiceFace() {
    setState(() {
      leftDiceNumber = Random().nextInt(6)+1;
      rightDiceNumber = Random().nextInt(6)+1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: (){
               changeDiceFace();
                },
              child: Image.asset('images/dice$leftDiceNumber.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: (){
                changeDiceFace();
              },
                child: Image.asset('images/dice$rightDiceNumber.png')),
          ),
        ],
      ),
    );
  }
}