import 'package:flutter/material.dart';

import '../component/widgets/Item.dart';
import '../model/content.dart';

class FamilyMembersScreen extends StatelessWidget {
  const FamilyMembersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff46322b),
        title: const Text(
          'Family Members',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.builder(
        itemCount: family.length,
        itemBuilder: (context, index) {
          return Item(
            number: family[index],
            color: const Color(0xff558B37),
            isPhase: false,
          );
        },
      ),
    );
  }
}

List<Content> family = [
  Content(
    image: 'assets/images/family_members/family_father.png',
    jName: 'Chichioya',
    eName: 'Father',
    sound: 'sounds/family_members/father.wav',
  ),
  Content(
    image: 'assets/images/family_members/family_mother.png',
    jName: 'Hahaoya',
    eName: 'Mother',
    sound: 'sounds/family_members/mother.wav',
  ),
  Content(
    image: 'assets/images/family_members/family_son.png',
    jName: 'Musuko',
    eName: 'Son',
    sound: 'sounds/family_members/son.wav',
  ),
  Content(
    image: 'assets/images/family_members/family_daughter.png',
    jName: 'Musume',
    eName: 'Daughter',
    sound: 'sounds/family_members/daughter.wav',
  ),
  Content(
    image: 'assets/images/family_members/family_older_brother.png',
    jName: 'Anpapa',
    eName: 'Older brother',
    sound: 'sounds/family_members/older bother.wav',
  ),
  Content(
    image: 'assets/images/family_members/family_younger_brother.png',
    jName: 'Otouto',
    eName: 'Younger brother',
    sound: 'sounds/family_members/younger brohter.wav',
  ),
  Content(
    image: 'assets/images/family_members/family_older_sister.png',
    jName: 'Imoto',
    eName: 'Older sister',
    sound: 'sounds/family_members/older sister.wav',
  ),
  Content(
    image: 'assets/images/family_members/family_younger_sister.png',
    jName: 'Ototo',
    eName: 'Younger sister',
    sound: 'sounds/family_members/younger sister.wav',
  ),
  Content(
    image: 'assets/images/family_members/family_grandfather.png',
    jName: 'Ojisan',
    eName: 'Grandfather',
    sound: 'sounds/family_members/grandfather.wav',
  ),
  Content(
    image: 'assets/images/family_members/family_grandmother.png',
    jName: 'O banchan',
    eName: 'Grandmother',
    sound: 'sounds/family_members/grandmother.wav',
  ),
];
