import 'package:flutter/material.dart';
import 'package:lunguage_learning/classes/number_classe.dart';
import 'package:lunguage_learning/widgets/category1_widjet.dart';

class FamilyMembersPage extends StatelessWidget {
  const FamilyMembersPage({super.key});
final List<Number> numbers = const[
    Number(image: 'assets/images/family_members/family_father.png', jpName: 'Chichioya', enName: 'father',audio: 'sounds/family_members/father.wav'),
    Number(image: 'assets/images/family_members/family_daughter.png', jpName: 'Musume', enName: 'daughter',audio: 'sounds/family_members/daughter.wav'),
    Number(image: 'assets/images/family_members/family_grandfather.png', jpName: 'Ojisan', enName: 'Grand Father',audio: 'sounds/family_members/grand father.wav'),
    Number(image: 'assets/images/family_members/family_mother.png', jpName: 'Hahaoya', enName: 'mother',audio: 'sounds/family_members/mother.wav'),
    Number(image: 'assets/images/family_members/family_grandmother.png', jpName: 'Sobo', enName: 'grand mother',audio: 'sounds/family_members/grand mother.wav'),
    Number(image: 'assets/images/family_members/family_older_brother.png', jpName: 'Nisan', enName: 'older brother',audio: 'sounds/family_members/older bother.wav'),
    Number(image: 'assets/images/family_members/family_older_sister.png', jpName: 'Ane', enName: 'Older sister',audio: 'sounds/family_members/older sister.wav'),
    Number(image: 'assets/images/family_members/family_son.png', jpName: 'Musuko', enName: 'son',audio: 'sounds/family_members/son.wav'),
    Number(image: 'assets/images/family_members/family_younger_brother.png', jpName: 'ototo', enName: 'Younger brother',audio: 'sounds/family_members/younger brohter.wav'),
    Number(image: 'assets/images/family_members/family_younger_sister.png', jpName: 'imoto', enName: 'Younger sister',audio: 'sounds/family_members/younger sister.wav'),
  ];
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme:const IconThemeData(color: Colors.white),
        title:const Text('Family Members',style: TextStyle(color: Colors.white),),
        backgroundColor:const Color(0xff4a332b),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) {
         return  CategoryWidget1(number: numbers[index],colors1:const Color(0xfffff1dc),colors2:const Color(0xff527c30),);
        },
      ),
    );

  }
}