import 'package:flutter/material.dart';
import 'package:toku_app/components/phrases_item.dart';

import '../models/item_details.dart';

class PhrasesPage extends StatelessWidget {
   const PhrasesPage({super.key});
   final List<ItemDetails> phrasesList = const[
  ItemDetails(enName: 'Are you coming?', jbName: 'Kimasu ka?', sound: 'sounds/phrases/are_you_coming.wav', color: Colors.blueAccent),
  ItemDetails(enName: 'Don\'t forget to subscribe', jbName: 'Kōdoku suru koto o wasurenaide kudasai', sound: 'sounds/phrases/dont_forget_to_subscribe.wav', color: Colors.blueAccent),
  ItemDetails(enName: 'How are you feeling', jbName: 'Go kibun wa ikagadesu ka', sound: 'sounds/phrases/how_are_you_feeling.wav', color: Colors.blueAccent),
  ItemDetails(enName: 'I love anime', jbName: 'Watashi wa anime ga daisukidesu', sound: 'sounds/phrases/i_love_anime.wav', color: Colors.blueAccent),
  ItemDetails(enName: 'I love programming', jbName: 'Puroguramingu ga daisukidesu', sound: 'sounds/phrases/i_love_programming.wav', color: Colors.blueAccent),
  ItemDetails(enName: 'Programming is easy', jbName: 'Puroguramingu wa kantandesu', sound: 'sounds/phrases/programming_is_easy.wav', color: Colors.blueAccent),
  ItemDetails(enName: 'What is your name?', jbName: 'Anata no namae wa nanidesu ka?', sound: 'sounds/phrases/what_is_your_name.wav', color: Colors.blueAccent),
  ItemDetails(enName: 'Where are you going?', jbName: 'Doko ni iku no?', sound: 'sounds/phrases/where_are_you_going.wav', color: Colors.blueAccent),
  ItemDetails(enName: 'Yes im coming', jbName: 'Hai, kimasu', sound: 'sounds/phrases/yes_im_coming.wav', color: Colors.blueAccent),];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: const Text(
          'Phrases',
          style: TextStyle(color: Colors.white),
        ),
      ),
      backgroundColor: const Color(0xffFFF6DC),
      body: ListView.builder(
        itemCount: phrasesList.length,
        physics: const BouncingScrollPhysics(),
        itemBuilder: ( context,  index) {
          return PhrasesItem(item: phrasesList[index]);
        },

      ),
    );
  }
}
