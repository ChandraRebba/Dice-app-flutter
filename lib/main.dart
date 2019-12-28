import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dice'),
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
  int leftdie = 1;
  int rightdie = 1;

  void changeFunc(){
    setState(() {
      leftdie = Random().nextInt(6) + 1;
      rightdie = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                changeFunc();
              },
              child: Image.asset('images/dice$leftdie.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                changeFunc();
              },
              child: Image.asset('images/dice$rightdie.png'),
            ),
          ),
        ],
      ),
    );
  }
}

/*class DicePage extends StatelessWidget {

}*/
