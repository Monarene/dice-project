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
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftNumber = 1;
  int rightNumber = 1;

  @override

  void returnNumber(){
     leftNumber = Random().nextInt(6) + 1;
     rightNumber = Random().nextInt(6) + 1;
}
  Widget build(BuildContext context) {

    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: FlatButton(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset("./images/dice$leftNumber.png"),
              onPressed: (){
                setState(() {
                  returnNumber();
                });
              },
            ),
          ),
          Expanded(
            flex: 1,
            child: FlatButton(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset("./images/dice$rightNumber.png"),
              onPressed: (){
                setState(() {
                  returnNumber();
                });
              },
            ),
          )
        ],
      ),
    );
  }
}

