import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class XylophoneScreen extends StatelessWidget {
  const XylophoneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(child: noteButton('note1.wav', Colors.red)),
        Expanded(child: noteButton('note2.wav', Colors.orange)),
        Expanded(child: noteButton('note3.wav', Colors.yellow)),
        Expanded(child: noteButton('note4.wav', Colors.green)),
        Expanded(child: noteButton('note5.wav', Colors.teal)),
        Expanded(child: noteButton('note6.wav', Colors.blue)),
        Expanded(child: noteButton('note7.wav', Colors.purple)),
      ],
    );
  }

  GestureDetector noteButton(
    String path,
    Color boxColor,
  ) {
    return GestureDetector(
      onTap: () {
        AudioPlayer().play(AssetSource(path));
      },
      child: Container(
        color: boxColor,
        width: double.infinity,
      ),
    );
  }
}
