import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/src/widgets/basic.dart';

void main()=> runApp(XylophoneApp());
void playSound(int notenum){
  final player=AudioCache();
  player.play('note$notenum.wav');
}

Expanded buildKey({Color color, int soundnum})
{
    return Expanded(child: FlatButton(onPressed: (){
      playSound(soundnum);
    }, child: Container(color: color,
    )
    ),
  );
}

class XylophoneApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(backgroundColor: Colors.black,
      body: SafeArea(child: Column(

      children: <Widget>[
      buildKey(color: Colors.red,soundnum: 1),
      buildKey(color: Colors.orange,soundnum: 2),
      buildKey(color: Colors.yellow,soundnum: 3),
      buildKey(color: Colors.green,soundnum: 4),
      buildKey(color: Colors.teal,soundnum: 5),
      buildKey(color: Colors.blue,soundnum: 6),
      buildKey(color: Colors.purple,soundnum: 7),
      ],  
      ),
    )
    )
  );

  }
}