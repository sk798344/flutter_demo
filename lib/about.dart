import 'package:flutter/material.dart';
import './drawer.dart';

class About extends StatelessWidget{
  const About({super.key});
  Widget build(BuildContext context){
    return Scaffold(
       drawer: const MyDrawer(),
      appBar: AppBar(title:Text('about page')),
      body:Center(child:Text('This is about us')),
      );
  }
}