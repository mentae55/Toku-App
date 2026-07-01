import 'package:flutter/material.dart';
import 'package:toku/component/widgets/custom_container.dart';
import 'package:toku/screens/family_members_screen.dart';
import 'package:toku/screens/phrases_screen.dart';

import 'colors_screen.dart';
import 'number_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff46322b),
        title: const Text('Toku',style: TextStyle(color: Colors.white),),
      ),
      body: Column(
        children: [
          CustomContainer(
            name: "Numbers",
            color: const Color(0xffEF9235),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const NumberScreen()));
            },
          ),
          CustomContainer(
            name: "FamilyMembers",
            color: const Color(0xff558B37),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const FamilyMembersScreen()));
            },
          ),
          CustomContainer(
            name: "Colors",
            color: const Color(0xff79359F),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const ColorsScreen()));
            },
          ),
          CustomContainer(
            name: "Phrases",
            color: const Color(0xff5eADC7),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const PhrasesScreen()));
            },
          ),
        ],
      ),
    );
  }
}
