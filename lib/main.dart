import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDice = 3;
  int rightDice = 4;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
              child: TextButton(
                  onPressed: () {
                    setState(() {
                      leftDice = Random().nextInt(6)+1;
                      rightDice=Random().nextInt(6)+1;
                    });
                    print('leftDice');
                  },
                  child: Image(image: AssetImage('images/dice$leftDice.png')))),
          Expanded(
              child: TextButton(
                  onPressed: () {
                    setState(() {
                      rightDice =  Random().nextInt(6)+1;
                      leftDice = Random().nextInt(6)+1;

                    });
                    print('rightDice');
                  },
                  child:
                      Image(image: AssetImage('images/dice$rightDice.png')))),
        ],
      ),
    );
  }
}
