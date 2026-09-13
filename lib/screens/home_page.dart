import 'package:flutter/material.dart';
import 'package:lunguage_learning/screens/colors_page.dart';
import 'package:lunguage_learning/screens/family_members_page.dart';
import 'package:lunguage_learning/screens/numbers_page.dart';
import 'package:lunguage_learning/screens/phrases_page.dart';
import 'package:lunguage_learning/widgets/category_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color(0xfffff3d9),
      appBar: AppBar(
        title:const Text('Toku',
        style: TextStyle(color: Colors.white),
        ),
        backgroundColor:const Color(0xff4a332b),
      ),
      body: Column(
        children: [
          CategoryWidget(text: 'Numbers',color:const Color(0xfff89530),onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return const NumbersPage();
            }));
          },),
          CategoryWidget(text: 'Family Members',color:const Color(0xff4e822f),onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return const FamilyMembersPage();
            }));
          },),
          CategoryWidget(text: 'Colors',color:const Color(0xff7d3fa2),onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return const ColorsPage();
            }));
          }),
          CategoryWidget(text: 'Phrases',color:const Color(0xff47a5cb),onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return const PhrasesPage();
            }));
          }),
        ],
      ),
    );
  }
}