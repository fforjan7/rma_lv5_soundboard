import 'dart:io';

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter/services.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  AudioPlayer player = AudioPlayer();

  playSound(String path) async {
    final file = new File('${(await getTemporaryDirectory()).path}/music.mp3');
    await file.writeAsBytes(
        (await rootBundle.load('assets/sounds/$path')).buffer.asUint8List());
    final result = await player.play(file.path, isLocal: true);
  }

  @override

  
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SoundBoard'),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 170,
              child: InkWell(
                child: Image.asset(
                  'assets/images/dog.jpg',
                  fit: BoxFit.cover,
                ),
                onTap: () {
                  playSound('dog.wav');
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 170,
              child: InkWell(
                child: Image.asset(
                  'assets/images/cat.jpg',
                  fit: BoxFit.cover,
                ),
                onTap: () {
                  playSound('cat.wav');
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 170,
              child: InkWell(
                child: Image.asset(
                  'assets/images/cow.jpg',
                  fit: BoxFit.cover,
                ),
                onTap: () {
                  playSound('cow.wav');
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
