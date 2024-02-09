import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const DicePage());
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void diceState() {
    leftDiceNumber = Random().nextInt(6) + 1;
    rightDiceNumber = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: const Center(child: Text('DICE')),
        ),
        body: Center(
          child: Row(
            //crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      //print('$leftDiceNumber');
                      diceState();
                    });
                  },
                  child: Image(
                    //color: Colors.red,
                    image: AssetImage('../images/dice$leftDiceNumber.png'),
                  ),
                ),
              ),
              // SizedBox(
              //   width: 16,
              // ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      diceState();
                    });

                    //print("Right");
                  },
                  child: Image(
                    //color: Colors.green,
                    image: AssetImage('../images/dice$rightDiceNumber.png'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
