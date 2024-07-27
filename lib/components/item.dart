import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku_app/models/item_details.dart';

import 'item_info.dart';

class Item extends StatelessWidget {
  const Item({super.key, required this.item});

  final ItemDetails item;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: item.color,
      height: 100,
      child: Row(
        children: [
          Container(
            color: const Color(0xffFFF6DC),
            child: Image.asset(item.image!),
          ),
          Expanded(child: ItemInfo(item: item))
        ],
      ),
    );
  }
}



