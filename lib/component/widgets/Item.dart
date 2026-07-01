import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku/model/content.dart';

import '../../model/phrases.dart';

class Item extends StatefulWidget {
  final Content? number;
  final Phrases? phrases;
  final Color color;
  bool isPhase;

  Item({
    super.key,
    this.number,
    required this.color,
    required this.isPhase,
    this.phrases,
  });

  @override
  State<Item> createState() => _ItemState();
}

class _ItemState extends State<Item> {
  bool isPlaying = false;
  final AudioPlayer player = AudioPlayer();

  @override
  void setState(VoidCallback fn) {
    if (player.state == PlayerState.playing) {
      setState(() {
        isPlaying = true;
      });
    } else {
      setState(() {
        isPlaying = false;
      });
    }
    super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: widget.color,
      child: Row(
        children: [
          widget.isPhase == false
              ? Container(
                  color: const Color(0xffFFF6DC),
                  child: Image.asset(widget.number!.image),
                )
              : const SizedBox(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.isPhase == false
                      ? widget.number!.jName
                      : widget.phrases!.jName,
                  style: const TextStyle(fontSize: 20, color: Colors.white),
                ),
                Text(
                  widget.isPhase == false
                      ? widget.number!.eName
                      : widget.phrases!.eName,
                  style: const TextStyle(fontSize: 20, color: Colors.white),
                ),
              ],
            ),
          ),
          const Spacer(flex: 1),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              icon: isPlaying
                  ? const Icon(Icons.pause, color: Colors.white, size: 30)
                  : Icon(Icons.play_arrow, color: Colors.white, size: 30),
              onPressed: () async {
                await player.play(
                  AssetSource(
                    widget.isPhase == false
                        ? widget.number!.sound
                        : widget.phrases!.sound,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
