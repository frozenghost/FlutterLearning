import 'dart:math';
import 'package:flutter/material.dart';

class DiceContent extends StatefulWidget {
  @override
  _DiceContentState createState() => _DiceContentState();
}

class _DiceContentState extends State<DiceContent> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  leftDiceNumber = Random().nextInt(6) + 1;
                });
              },
              child: Image.asset('images/dice_$leftDiceNumber.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  rightDiceNumber = Random().nextInt(6) + 1;
                });
              },
              child: Image.asset('images/dice_$rightDiceNumber.png'),
            ),
          ),
          FlatButton(
            color: Colors.teal,
            textColor: Colors.white,
            disabledColor: Colors.grey,
            disabledTextColor: Colors.black,
            padding: EdgeInsets.all(8.0),
            onPressed: () {
              Navigator.pushNamed(context, '/music');
            },
            child: Text(
              "Go to music",
              style: TextStyle(
                fontFamily: 'Work Sans',
                fontSize: 20.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('Dice'),
      ),
      body: DiceContent(),
    );
  }
}
