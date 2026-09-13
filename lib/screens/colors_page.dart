import 'package:flutter/material.dart';
import 'package:lunguage_learning/classes/number_classe.dart';
import 'package:lunguage_learning/widgets/category1_widjet.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});
final List<Number> numbers = const[
    Number(image: 'assets/images/colors/color_black.png', jpName: 'Burakku', enName: 'black',audio: 'sounds/colors/black.wav'),
    Number(image: 'assets/images/colors/color_brown.png', jpName: 'Chairo', enName: 'brown',audio: 'sounds/colors/brown.wav'),
    Number(image: 'assets/images/colors/color_dusty_yellow.png', jpName: 'Hokori PPoi Kiiro', enName: 'dusty yellow',audio: 'sounds/colors/dusty yellow.wav'),
    Number(image: 'assets/images/colors/color_gray.png', jpName: 'Gure', enName: 'gray',audio: 'sounds/colors/gray.wav'),
    Number(image: 'assets/images/colors/color_green.png', jpName: 'Midori', enName: 'green',audio: 'sounds/colors/green.wav'),
    Number(image: 'assets/images/colors/color_red.png', jpName: 'Aka', enName: 'red',audio: 'sounds/colors/red.wav'),
    Number(image: 'assets/images/colors/color_black.png', jpName: 'Burakku', enName: 'black',audio: 'sounds/colors/black.wav'),
    Number(image: 'assets/images/colors/color_white.png', jpName: 'Shiroi', enName: 'white',audio: 'sounds/colors/white.wav'),
    Number(image: 'assets/images/colors/yellow.png', jpName: 'Kiiro', enName: 'yellow',audio: 'sounds/colors/yellow.wav'),
    Number(image: 'assets/images/colors/color_red.png', jpName: 'Aka', enName: 'red',audio: 'sounds/colors/red.wav'),
  ];
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme:const IconThemeData(color: Colors.white),
        title:const Text('Colors',style: TextStyle(color: Colors.white),),
        backgroundColor:const Color(0xff4a332b),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) {
         return  CategoryWidget1(number: numbers[index],colors1:const Color(0xfffff1dc),colors2:const Color(0xff7d3fa2),);
        },
      ),
    );

  }
}