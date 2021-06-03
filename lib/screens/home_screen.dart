import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

// ignore: must_be_immutable
class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late AudioPlayer player;

  @override
  void initState() {
    super.initState();
    player = AudioPlayer();
  }

  @override
  void dispose() {
    player.dispose();
    super.dispose();
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
                  'assets/images/elephant.jpg',
                  fit: BoxFit.cover,
                ),
                onTap: () async {
                  await player.setAsset('assets/sounds/elephant.mp3');
                  player.play();
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
                  'assets/images/horse.jpg',
                  fit: BoxFit.cover,
                ),
                onTap: () async {
                  await player.setAsset('assets/sounds/horse.mp3');
                  player.play();
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
                onTap: () async {
                  await player.setAsset('assets/sounds/cow.mp3');
                  player.play();
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
