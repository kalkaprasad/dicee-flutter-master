import 'dart:math';

import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Luck Number'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _DicePage();
  }
}
class _DicePage extends State<DicePage>{
  var one = 1;
  var two=2;
  var threee=3;
  @override

  Widget build(BuildContext context) {
    // TODO: implement build
    return new Center(
      child: new Row(
        children: <Widget>[
          Expanded(
            child: new FlatButton(
              child: Image.asset("images/dice$one.png"),
              onPressed: () {
                final audio=AudioCache();
                audio.play('kalka.wav');
                setState(() {

                  one=Random().nextInt(6)+1;
                });

                print("Clicked here");
              },
            ),
          ),
          Expanded(
            child: new FlatButton(
              onPressed: (){
                final audio=AudioCache();
                audio.play('kalka.wav');
                setState(() {

                two=Random().nextInt(6)+1;
                });
              },
              child: Image.asset("images/dice$two.png"),
            ),
          ),
          Expanded(
            child: new FlatButton(
              onPressed: (){
                final audio=AudioCache();
                audio.play('kalka.wav');
                setState(() {

                  threee=Random().nextInt(6)+1;
                });
              },
              child: Image.asset("images/dice$threee.png"),
            ),
          )
        ],
      ),
    );
  }

}
