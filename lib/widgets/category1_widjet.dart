import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:lunguage_learning/classes/number_classe.dart';

class  CategoryWidget1 extends StatelessWidget {
  final Number number;
  final Color colors1;
  final Color colors2;
  const  CategoryWidget1({super.key,required this.number,required this.colors1,required this.colors2});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  Container(
          height: 85,
          width: double.infinity,
           child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
             children: [
               Container(
                      width: 85,
                      height: 85,
                      color: colors1,
                      child: Image.asset(number.image),
                    ),
                    Expanded(
                      child: Container(
                        color: colors2,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(number.jpName,style:const TextStyle(color: Colors.white),),
                                  Text(number.enName,style:const TextStyle(color: Colors.white),),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: IconButton(
                                  onPressed: ()async{
                                 final player = AudioPlayer();
                                 await player.play(AssetSource(number.audio));
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
  }
}