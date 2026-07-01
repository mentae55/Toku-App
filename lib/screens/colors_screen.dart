import 'package:flutter/material.dart';

import '../component/widgets/Item.dart';
import '../model/content.dart';

class ColorsScreen extends StatelessWidget {
  const ColorsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff46322b),
        title: const Text('Colors', style: TextStyle(color: Colors.white)),
      ),
      body: ListView.builder(
        itemCount: colors.length,
        itemBuilder: (context, index) {
          return Item(
            number: colors[index],
            color: const Color(0xff79359F),
            isPhase: false,
          );
        },
      ),
    );
  }
}

List<Content> colors = [
  Content(
    image: 'assets/images/colors/yellow.png',
    jName: 'Chairo',
    eName: 'Yellow',
    sound: 'sounds/colors/yellow.wav',
  ),
  Content(
    image: 'assets/images/colors/color_green.png',
    jName: 'Midori',
    eName: 'Green',
    sound: 'sounds/colors/green.wav',
  ),
  Content(
    image: 'assets/images/colors/color_red.png',
    jName: 'Aka',
    eName: 'Red',
    sound: 'sounds/colors/red.wav',
  ),
  Content(
    image: 'assets/images/colors/color_black.png',
    jName: 'Kuro',
    eName: 'Black',
    sound: 'sounds/colors/black.wav',
  ),
  Content(
    image: 'assets/images/colors/color_white.png',
    jName: 'Shiro',
    eName: 'White',
    sound: 'sounds/colors/white.wav',
  ),
  Content(
    image: 'assets/images/colors/color_brown.png',
    jName: 'Chairo',
    eName: 'Brown',
    sound: 'sounds/colors/brown.wav',
  ),
  Content(
    image: 'assets/images/colors/color_dusty_yellow.png',
    jName: 'Chairo',
    eName: 'Dusty Yellow',
    sound: 'sounds/colors/dusty_yellow.wav',
  ),
  Content(
    image: 'assets/images/colors/color_gray.png',
    jName: 'Chairo',
    eName: 'Gray',
    sound: 'sounds/colors/gray.wav',
  ),
];
