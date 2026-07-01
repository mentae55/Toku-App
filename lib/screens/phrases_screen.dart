import 'package:flutter/material.dart';

import '../component/widgets/Item.dart';
import '../model/content.dart';
import '../model/phrases.dart';

class PhrasesScreen extends StatelessWidget {
  const PhrasesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff46322b),
        title: const Text('Phases', style: TextStyle(color: Colors.white)),
      ),
      body: ListView.builder(
        itemCount: phases.length,
        itemBuilder: (context, index) {
          return Item(
            phrases: phases[index],
            color: const Color(0xff5eADC7),
            isPhase: true,
          );
        },
      ),
    );
  }
}

List<Phrases> phases = [
  Phrases(
    jName: 'Kimasu ka',
    eName: 'Are you coming?',
    sound: 'sounds/phrases/are_you_coming.wav',
  ),

  Phrases(
    jName: 'Koto mo',
    eName: 'Don\'t forget to subscribe',
    sound: 'sounds/phrases/dont_forget_to_subscribe.wav',
  ),
  Phrases(
    jName: 'Doko ni iku no?',
    eName: 'Where are you going?',
    sound: 'sounds/phrases/where_are_you_going.wav',
  ),
  Phrases(
    jName: 'Namae wa nani?',
    eName: 'What is your name?',
    sound: 'sounds/phrases/what_is_your_name.wav',
  ),
  Phrases(
    jName: 'O kereba kimasu',
    eName: 'How are you feeling?',
    sound: 'sounds/phrases/how_are_you_feeling.wav',
  ),
  Phrases(
    jName: 'Watashi wa anime ga daisukidesu',
    eName: 'I love anime',
    sound: 'sounds/phrases/i_love_anime.wav',
  ),
  Phrases(
    jName: 'Puroguramingu ga daisukidesu',
    eName: 'I love programming',
    sound: 'sounds/phrases/i_love_programming.wav',
  ),
  Phrases(
    jName: 'Puroguramingu dake no iya na?',
    eName: 'Programing is easy',
    sound: 'sounds/phrases/programming_is_easy.wav',
  ),
];
