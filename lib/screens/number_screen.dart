import 'package:flutter/material.dart';
import 'package:toku/component/widgets/Item.dart';
import 'package:toku/model/content.dart';

class NumberScreen extends StatefulWidget {
  const NumberScreen({super.key});

  @override
  State<NumberScreen> createState() => _NumberScreenState();
}

class _NumberScreenState extends State<NumberScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff46322b),
        title: const Text('Numbers', style: TextStyle(color: Colors.white)),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          return Item(
            number: numbers[index],
            color: const Color(0xffEF9235),
            isPhase: false,
          );
        },
      ),
    );
  }
}

List<Content> numbers = [
  Content(
    image: 'assets/images/numbers/number_one.png',
    eName: 'One',
    jName: 'Ichi',
    sound: 'sounds/numbers/number_one_sound.mp3',
  ),
  Content(
    image: 'assets/images/numbers/number_two.png',
    eName: 'Two',
    jName: 'Ni',
    sound: 'sounds/numbers/number_two_sound.mp3',
  ),
  Content(
    image: 'assets/images/numbers/number_three.png',
    eName: 'Three',
    jName: 'San',
    sound: 'sounds/numbers/number_three_sound.mp3',
  ),
  Content(
    image: 'assets/images/numbers/number_four.png',
    eName: 'Four',
    jName: 'Shi',
    sound: 'sounds/numbers/number_four_sound.mp3',
  ),
  Content(
    image: 'assets/images/numbers/number_five.png',
    eName: 'Five',
    jName: 'Go',
    sound: 'sounds/numbers/number_five_sound.mp3',
  ),
  Content(
    image: 'assets/images/numbers/number_six.png',
    eName: 'Six',
    jName: 'Roku',
    sound: 'sounds/numbers/number_six_sound.mp3',
  ),
  Content(
    image: 'assets/images/numbers/number_seven.png',
    eName: 'Seven',
    jName: 'Sebun',
    sound: 'sounds/numbers/number_seven_sound.mp3',
  ),
  Content(
    image: 'assets/images/numbers/number_eight.png',
    eName: 'Eight',
    jName: 'Shichi',
    sound: 'sounds/numbers/number_eight_sound.mp3',
  ),
  Content(
    image: 'assets/images/numbers/number_nine.png',
    eName: 'Nine',
    jName: 'Kyuu',
    sound: 'sounds/numbers/number_nine_sound.mp3',
  ),
  Content(
    image: 'assets/images/numbers/number_ten.png',
    eName: 'Ten',
    jName: 'Juu',
    sound: 'sounds/numbers/number_ten_sound.mp3',
  ),
];
