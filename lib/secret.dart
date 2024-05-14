import 'package:flutter/material.dart';

class SecretPage extends StatelessWidget {
  const SecretPage({super.key});

  @override
  Widget build(BuildContext context) {
     var Name_date = ModalRoute.of(context)?.settings.arguments ;
    return Scaffold(
        appBar: AppBar(
          // backgroundColor: Colors.red,
          title: const Text("Secret"),
        ),
        body: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Check data $Name_date'),
            ],
          ),
        ));
  }
}