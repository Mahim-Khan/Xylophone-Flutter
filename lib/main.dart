import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp( MyApp());
}
class MyApp extends StatelessWidget {
  void playsound(int soundNumber){
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }
  Expanded Buildkey({required Color color,required int soundNumber }){
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: (){
          playsound(soundNumber);
        },
        child: Text(''),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Buildkey(color:Colors.pink,soundNumber:1 ),
              Buildkey(color:Colors.red,soundNumber:2 ),
              Buildkey(color:Colors.orange,soundNumber:3 ),
              Buildkey(color:Colors.yellow,soundNumber:4 ),
              Buildkey(color:Colors.green,soundNumber:5 ),
              Buildkey(color:Colors.blue,soundNumber:6 ),
              Buildkey(color:Colors.purple,soundNumber:7 ),
            ],
          ),
        ),
      ),
    );
  }
}
