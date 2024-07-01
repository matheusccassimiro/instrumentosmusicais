import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import '../models/instrument.dart';

class InstrumentTile extends StatefulWidget {
  final Instrument instrument;
  const InstrumentTile({super.key, required this.instrument});

  @override
  _InstrumentTileState createState() => _InstrumentTileState();
}

class _InstrumentTileState extends State<InstrumentTile> {
  final AudioPlayer _audioPlayer = AudioPlayer();
  final AudioCache _audioCache = AudioCache(prefix: '');
  bool _isPlaying = false;

  @override
  void dispose() {
    _audioPlayer.dispose();
    super.dispose();
  }

  void _togglePlayPause() async {
    if (_isPlaying) {
      await _audioPlayer.pause();
    } else {
      // Utilize AudioCache to get the audio file URL
      final file = await _audioCache.load(widget.instrument.soundPath);
      await _audioPlayer.play(DeviceFileSource(file.path));
    }
    setState(() {
      _isPlaying = !_isPlaying;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      width: 330,
      decoration: BoxDecoration(
        color: const Color(0xFFFBE8DA),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              widget.instrument.name,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: Image.asset(
                widget.instrument.imagePath,
                width: 230,
              ),
            ),
            ElevatedButton(
              onPressed: _togglePlayPause,
              child: Icon(_isPlaying ? Icons.pause : Icons.play_arrow),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Text(
                widget.instrument.description,
                style: TextStyle(color: Colors.grey[600]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/*

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import '../models/instrument.dart';

class InstrumentTile extends StatelessWidget {
  Instrument instrument;
  InstrumentTile({super.key, required this.instrument});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 25),
      width: 330,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              instrument.name,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                ),
          ),

            //shoe pic
            ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Image.asset(instrument.imagePath,
                width: 230,),

            ),

            ElevatedButton(
                onPressed: () {
                  AudioCache.instance = AudioCache(prefix: '');
                  final player=AudioPlayer();
                  player.play(AssetSource(instrument.soundPath));
            },
                child: const Icon(Icons.play_arrow)),

            // description
            Padding(
              padding: const EdgeInsets.symmetric( horizontal: 15.0),
              child: Text(instrument.description,
                style: TextStyle(color: Colors.grey[600]),
              ),
            ),


                   ],
        ),
      ),
    );
  }
}
*/
