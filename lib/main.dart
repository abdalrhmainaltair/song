import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MusicWidget());
}

void playMusic(int musicNumber) {
  final player = AudioPlayer();
  player.play(AssetSource('music-$musicNumber.mp3'));
}

Widget buildMusicButton(int musicNumber) {
  return Expanded(
    child: ElevatedButton(
      onPressed: () {
        playMusic(musicNumber);
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.music_note, color: Colors.red),
          SizedBox(width: 10),
          Text(
            'song$musicNumber',
            style: TextStyle(color: Colors.red, fontSize: 20),
          ),
        ],
      ),
    ),
  );
}

class MusicWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.purple[300],
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: Text('نغمات'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildMusicButton(1),
              SizedBox(height: 20),
              buildMusicButton(2),
              SizedBox(height: 20),
              buildMusicButton(3),
              SizedBox(height: 20),
              buildMusicButton(4),
              SizedBox(height: 20),
              buildMusicButton(5),
              SizedBox(height: 20),
              buildMusicButton(6),
              SizedBox(height: 20),
              buildMusicButton(7),
            ],
          ),
        ),
      ),
    );
  }
}
