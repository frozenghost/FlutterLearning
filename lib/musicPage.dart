import 'package:flutter/material.dart';
import 'package:random_words/random_words.dart';
import 'package:audioplayers/audio_cache.dart';

class MusicPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: FlatButton(
                onPressed: () {
                  final player = AudioCache();
                  player.play('info.mp3');
                },
                child: Text('Click Me'),
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/quiz');
                },
                child: Text('Go to quiz'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
