import 'package:flutter/material.dart';
import 'package:toku_app/components/category.dart';
import 'package:toku_app/screens/colors_page.dart';
import 'package:toku_app/screens/family_members_page.dart';
import 'package:toku_app/screens/number_page.dart';
import 'package:toku_app/screens/phrases_page.dart';

import '../constant.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackGroundColor,
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: const Color(0xff531B07),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  spreadRadius: 6,
                  blurRadius: 6,
                  offset: const Offset(0, -4),
                ),
              ],
            ),
            padding: const EdgeInsets.only(left: 20),
            alignment: Alignment.centerLeft,
            height: 80,
            width: double.infinity,
            child: const Text(
              'Toku',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Category(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const NumberPage();
              }));
            },
            text: 'Numbers',
            color: Colors.orange,
          ),
          Category(
            onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const FamilyMembersPage();
            }));
          },
            text: 'Family Members',
            color: Colors.green,
          ),
          Category(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const ColorsPage();
              }));
            },
            text: 'Colors',
            color: Colors.purple,
          ),
          Category(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return  PhrasesPage();
              }));
            },
            text: 'Phrases',
            color: Colors.blueAccent,
          ),
        ],
      ),
    );
  }
}
