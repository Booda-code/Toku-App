import 'package:flutter/material.dart';

import '../components/item.dart';
import '../models/item_details.dart';

class FamilyMembersPage extends StatelessWidget {
  const FamilyMembersPage({super.key});
  final List<ItemDetails> numbers = const[
    ItemDetails(image: 'assets/images/family_members/family_father.png', jbName: 'chichi', enName: 'father', sound: 'sounds/family_members/father.wav',color: Colors.green),
    ItemDetails(image: 'assets/images/family_members/family_daughter.png', jbName: 'musume', enName: 'daughter',sound: 'sounds/family_members/daughter.wav',color: Colors.green),
    ItemDetails(image: 'assets/images/family_members/family_grandfather.png', jbName: 'sofu', enName: 'grand father',sound: 'sounds/family_members/grand father.wav',color: Colors.green ),
    ItemDetails(image: 'assets/images/family_members/family_mother.png', jbName: 'haha', enName: 'mother',sound: 'sounds/family_members/mother.wav',color: Colors.green),
    ItemDetails(image: 'assets/images/family_members/family_grandmother.png', jbName: 'sobo', enName: 'grand mother',sound: 'sounds/family_members/grand mother.wav',color: Colors.green),
    ItemDetails(image: 'assets/images/family_members/family_older_brother.png', jbName: 'ani', enName: 'older brother',sound: 'sounds/family_members/older bother.wav',color: Colors.green),
    ItemDetails(image: 'assets/images/family_members/family_older_sister.png', jbName: 'ane', enName: 'older sister',sound: 'sounds/family_members/older sister.wav',color: Colors.green),
    ItemDetails(image: 'assets/images/family_members/family_son.png', jbName: 'musuko', enName: 'son',sound: 'sounds/family_members/son.wav',color: Colors.green),
    ItemDetails(image: 'assets/images/family_members/family_younger_brother.png', jbName: 'otouto', enName: 'younger brother',sound: 'sounds/family_members/younger brohter.wav',color: Colors.green),
    ItemDetails(image: 'assets/images/family_members/family_younger_sister.png', jbName: 'imouto', enName: 'younger sister',sound: 'sounds/family_members/younger sister.wav',color: Colors.green),

  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: const Text(
          'Family Members',
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
