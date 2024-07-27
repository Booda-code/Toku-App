import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/item_details.dart';

class ItemInfo extends StatelessWidget {
  const ItemInfo({super.key, required this.item});
  final ItemDetails item;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                item.jbName,
                style: const TextStyle(color: Colors.white, fontSize: 18),
              ),
              Text(
                item.enName,
                style: const TextStyle(color: Colors.white, fontSize: 18),
              ),
            ],
          ),
        ),
        const Spacer(
          flex: 1,
        ),
        IconButton(
          onPressed: () {
            item.playSound();
          },
          icon: const Icon(Icons.play_arrow),
          color: Colors.white,
          iconSize: 30,
        )
      ],
    );
  }
}