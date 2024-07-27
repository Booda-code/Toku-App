import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku_app/components/item_info.dart';

import '../models/item_details.dart';

class PhrasesItem extends StatelessWidget {
  const PhrasesItem({super.key, required this.item});
  final ItemDetails item;

  @override
  Widget build(BuildContext context) {
    return  Container(
      color: item.color,
      height: 100,
      child: ItemInfo(item: item)
    );
  }
}
