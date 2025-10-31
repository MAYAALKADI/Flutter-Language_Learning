import 'package:flutter/material.dart';
import 'package:lunguage_learning/classes/number_classe.dart';
import 'package:lunguage_learning/widgets/category1_widjet.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});
  final List<Number> numbers = const[
    Number(image: 'assets/images/numbers/number_one.png', jpName: 'ichi', enName: 'one',audio: 'sounds/numbers/number_one_sound.mp3'),
    Number(image: 'assets/images/numbers/number_two.png', jpName: 'Ni', enName: 'two',audio: 'sounds/numbers/number_two_sound.mp3'),
    Number(image: 'assets/images/numbers/number_three.png', jpName: 'San', enName: 'three',audio: 'sounds/numbers/number_three_sound.mp3'),
    Number(image: 'assets/images/numbers/number_four.png', jpName: 'Shi', enName: 'four',audio: 'sounds/numbers/number_four_sound.mp3'),
    Number(image: 'assets/images/numbers/number_five.png', jpName: 'Go', enName: 'five',audio: 'sounds/numbers/number_five_sound.mp3'),
    Number(image: 'assets/images/numbers/number_six.png', jpName: 'Roku', enName: 'six',audio: 'sounds/numbers/number_six_sound.mp3'),
    Number(image: 'assets/images/numbers/number_seven.png', jpName: 'Sebun', enName: 'seven',audio: 'sounds/numbers/number_seven_sound.mp3'),
    Number(image: 'assets/images/numbers/number_eight.png', jpName: 'hachi', enName: 'eight',audio: 'sounds/numbers/number_eight_sound.mp3'),
    Number(image: 'assets/images/numbers/number_nine.png', jpName: 'kyu', enName: 'nine',audio: 'sounds/numbers/number_nine_sound.mp3'),
    Number(image: 'assets/images/numbers/number_ten.png', jpName: 'ju', enName: 'ten',audio: 'sounds/numbers/number_ten_sound.mp3'),
  ];
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme:const IconThemeData(color: Colors.white),
        title:const Text('Numbers',style: TextStyle(color: Colors.white),),
        backgroundColor:const Color(0xff4a332b),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) {
         return  CategoryWidget1(number: numbers[index], colors1:const Color(0xfffff3db),colors2: const Color(0xfff89530),);
        },
      ),

    );
  }
}
