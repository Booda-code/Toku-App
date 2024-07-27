import 'package:flutter/material.dart';

import '../components/item.dart';
import '../models/item_details.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});
  final List<ItemDetails> numbers = const[
    ItemDetails(image: 'assets/images/colors/color_black.png', jbName: 'kuro', enName: 'black', sound: 'sounds/colors/black.wav',color: Colors.purple),
    ItemDetails(image: 'assets/images/colors/color_brown.png', jbName: 'chairo', enName: 'brown',sound: 'sounds/colors/brown.wav',color: Colors.purple),
    ItemDetails(image: 'assets/images/colors/color_dusty_yellow.png', jbName: 'beeju', enName: 'dusty yellow',sound:'sounds/colors/dusty yellow.wav',color: Colors.purple, ),
    ItemDetails(image: 'assets/images/colors/color_gray.png', jbName: 'hai', enName: 'gray',sound: 'sounds/colors/gray.wav',color: Colors.purple),
    ItemDetails(image: 'assets/images/colors/color_green.png', jbName: 'midori', enName: 'green',sound: 'sounds/colors/green.wav',color: Colors.purple),
    ItemDetails(image: 'assets/images/colors/color_red.png', jbName: 'aka', enName: 'red',sound: 'sounds/colors/red.wav',color: Colors.purple),
    ItemDetails(image: 'assets/images/colors/color_white.png', jbName: 'shiro', enName: 'white',sound: 'sounds/colors/white.wav',color: Colors.purple),
    ItemDetails(image: 'assets/images/colors/yellow.png', jbName: 'kiiro', enName: 'yellow',sound: 'sounds/colors/yellow.wav',color: Colors.purple),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: const Text(
          'Colors',
          style: TextStyle(color: Colors.white),
        ),
      ),
      backgroundColor: const Color(0xffFFF6DC),
      body: ListView.builder(
        itemCount: numbers.length,
        physics: const BouncingScrollPhysics(),
        itemBuilder: ( context,  index) {
          return Item(item: numbers[index]);
        },

      ),
    );
  }
}
