import 'package:flutter/material.dart';
import 'package:toku_app/components/item.dart';

import '../models/item_details.dart';

class NumberPage extends StatelessWidget {
  const NumberPage({super.key});
  final List<ItemDetails> numbers = const[
    ItemDetails(image: 'assets/images/numbers/number_one.png', jbName: 'ichi', enName: 'one', sound: 'sounds/numbers/number_eight_sound.mp3',color: Colors.orange),
    ItemDetails(image: 'assets/images/numbers/number_two.png', jbName: 'ni', enName: 'two',sound: 'sounds/numbers/number_two_sound.mp3',color: Colors.orange),
    ItemDetails(image: 'assets/images/numbers/number_three.png', jbName: 'san', enName: 'three',sound: 'sounds/numbers/number_three_sound.mp3',color: Colors.orange, ),
    ItemDetails(image: 'assets/images/numbers/number_four.png', jbName: 'yan', enName: 'four',sound: 'sounds/numbers/number_four_sound.mp3',color: Colors.orange),
    ItemDetails(image: 'assets/images/numbers/number_five.png', jbName: 'go', enName: 'five',sound: 'sounds/numbers/number_five_sound.mp3',color: Colors.orange),
    ItemDetails(image: 'assets/images/numbers/number_six.png', jbName: 'roku', enName: 'six',sound: 'sounds/numbers/number_six_sound.mp3',color: Colors.orange),
    ItemDetails(image: 'assets/images/numbers/number_seven.png', jbName: 'nana', enName: 'seven',sound: 'sounds/numbers/number_seven_sound.mp3',color: Colors.orange),
    ItemDetails(image: 'assets/images/numbers/number_eight.png', jbName: 'hachi', enName: 'eight',sound: 'sounds/numbers/number_eight_sound.mp3',color: Colors.orange),
    ItemDetails(image: 'assets/images/numbers/number_nine.png', jbName: 'kyu', enName: 'nine',sound: 'sounds/numbers/number_nine_sound.mp3',color: Colors.orange),
    ItemDetails(image: 'assets/images/numbers/number_ten.png', jbName: 'ju', enName: 'ten',sound: 'sounds/numbers/number_ten_sound.mp3',color: Colors.orange),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: const Text(
          'Numbers',
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
