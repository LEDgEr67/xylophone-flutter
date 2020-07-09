import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
List <Color> color=[Colors.red,Colors.orange,Colors.yellow,Colors.green,Colors.teal,Colors.blue,Colors.purple];

  play(int a){
    final player=AudioCache();
    player.play('note$a.wav');
  }

  Expanded bkey({Color color,int i}){

    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: (){
          play(i);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
          for( int i=1;i<=7;i++)
          {
            children.add(new bkey(color[i-1],i));
          }
            ],


          ),
        ),
      )
      );

  }
}
