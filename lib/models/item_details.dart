import 'dart:ui';

import 'package:audioplayers/audioplayers.dart';

class ItemDetails {
  final String? image;
  final String jbName;
  final String enName;
  final String sound;
  final Color color;

  const ItemDetails(
      {required this.color,
      required this.sound,
      this.image,
      required this.jbName,
      required this.enName});
  playSound() {
    final player = AudioPlayer();
    player.play(AssetSource(sound));
  }
}
