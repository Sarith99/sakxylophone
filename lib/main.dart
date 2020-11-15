import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatefulWidget {
  @override
  _XylophoneAppState createState() => _XylophoneAppState();
}

class _XylophoneAppState extends State<XylophoneApp> {
  // ignore: non_constant_identifier_names
  Expanded setNote({Color color, int NoteNo}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          final player = AudioCache();
          player.play('note$NoteNo.wav');
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              setNote(color: Colors.teal, NoteNo: 1),
              setNote(color: Colors.red, NoteNo: 2),
              setNote(color: Colors.yellowAccent, NoteNo: 3),
              setNote(color: Colors.purple, NoteNo: 4),
              setNote(color: Colors.green, NoteNo: 5),
              setNote(color: Colors.blue, NoteNo: 6),
              setNote(color: Colors.indigo, NoteNo: 7),
            ],
          ),
        ),
      ),
    );
  }
}
