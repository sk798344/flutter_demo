import 'package:flutter/material.dart';

class Tab1 extends StatelessWidget{
   const Tab1({super.key});

   @override

   Widget build(BuildContext context) {   
      return Center(
        child:Container(
          height: 200,
          width: 300,
          child: Column(children: [
            ElevatedButton(onPressed: () {  Navigator.of(context).pushNamed("/secret",arguments: "Hello from first page!"); },
                           child: Text('Stcak navigation'))
          ],),
        ) ,
      );
   }

}