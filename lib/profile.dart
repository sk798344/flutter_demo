import 'package:flutter/material.dart';
import './drawer.dart';

class Profile extends StatelessWidget{
  const Profile({super.key});
  Widget build(BuildContext context){
    return Scaffold(
       drawer: const MyDrawer(),
      appBar: AppBar(title:Text('Profile page')),
      body:Center(child:Text('This is Profile us')),
      );
  }
}