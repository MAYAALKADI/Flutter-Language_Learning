import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:lunguage_learning/classes/number_classe.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({super.key});
final List<Number> numbers = const[
    Number(image: '', jpName: 'Ködoku suru koto o wasurenaide kudasai', enName: 'dont forget to subscribe',audio: 'sounds/phrases/dont_forget_to_subscribe.wav'),
    Number(image: '', jpName: 'Watashi wa purogurarningu ga daisukidesu', enName: 'i love programming',audio: 'sounds/phrases/i_love_programming.wav'),
    Number(image: '', jpName: 'Purogurarningu wa kantandesu', enName: 'programming is easy',audio: 'sounds/phrases/programming_is_easy.wav'),
    Number(image: '', jpName: 'Doko ni itu no', enName: 'where are you going',audio: 'sounds/phrases/where_are_you_going.wav'),
    Number(image: '', jpName: 'Namae wa nandesu ka', enName: 'what is your name?',audio: 'sounds/phrases/what_is_your_name.wav'),
    Number(image: '', jpName: 'Watashi wa anime ga daisukidesu', enName: 'i love anime',audio: 'sounds/phrases/i_love_anime.wav'),
    Number(image: '', jpName: 'Go kibun wa ikagadesu ka', enName: 'how are you feeling?',audio: 'sounds/phrases/how_are_you_feeling.wav'),
    Number(image: '', jpName: 'Kimasu ka', enName: 'are you coming?',audio: 'sounds/phrases/are_you_coming.wav'),
    Number(image: '', jpName: 'Hai, ima ikimasu', enName: 'Yes im coming',audio: 'sounds/phrases/yes_im_coming.wav'),
    Number(image: '', jpName: 'Ködoku suru koto o wasurenaide kudasai', enName: 'dont forget to subscribe',audio: 'sounds/phrases/dont_forget_to_subscribe.wav'),
  ];
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme:const IconThemeData(color: Colors.white),
        title:const Text('Phrases',style: TextStyle(color: Colors.white),),
        backgroundColor:const Color(0xff4a332b),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) {
         return  Container(
          height: 85,
          width: double.infinity,
           child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
             children: [
                    Expanded(
                      child: Container(
                        color: const Color(0xff47a5cb),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(numbers[index].jpName,style:const TextStyle(color: Colors.white),),
                                  Text(numbers[index].enName,style:const TextStyle(color: Colors.white),),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: IconButton(
                                  onPressed: ()async{
                                 final player = AudioPlayer();
                                 await player.play(AssetSource(numbers[index].audio));
                                },
                                 icon:const Icon(Icons.play_arrow,
                                 color: Colors.white,
                                 ),
                                 ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
             ],
           ),
         );
        },
      ),
    );

  }
}