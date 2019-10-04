import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DICEE',
      home:DiceApp()
    ));

class DiceApp extends StatefulWidget {
  @override
  _DiceAppState createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
   var leftDiceNumber=1;
    var rightDiceNumber=3;
  void generateRandomNumber(){
    setState(() {
      leftDiceNumber=Random().nextInt(6)+1;
      rightDiceNumber=Random().nextInt(6)+1;  
    });
  }

   @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(title:Text('Dicee'), backgroundColor: Colors.tealgreen,),
      backgroundColor: Colors.tealgreen,
      body: Center(child: Row(
        children: <Widget>[
          Expanded(
              child: FlatButton(
              onPressed: (){print('button 1 pressed');
              generateRandomNumber();
               },
              child: Image.asset('images/dice$leftDiceNumber.png'),
            ),
          ),
           Expanded(
              child: FlatButton(
              onPressed: (){print('button 2 pressed');
              generateRandomNumber();
              },
              child: Image.asset('images/dice$rightDiceNumber.png'),
            ),
          ),
        ],
      ),  ),
    );
  }
}
