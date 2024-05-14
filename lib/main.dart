import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import './tab.dart';
import './about.dart';
import './profile.dart';
import './secret.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
            

Widget build(BuildContext context) {
    return MaterialApp(
      routes: <String, WidgetBuilder>{
        "/about": (BuildContext context) => const About(),
        "/profile": (BuildContext context) => const Profile(),
        "/home": (BuildContext context) => const HomePage(),
        "/secret": (BuildContext context) => const SecretPage(),
      },
      initialRoute: "/home",
      title: 'Flutter Navigation',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }


//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 205, 205, 29)),
//         useMaterial3: true,
//       ),
//       home: const MyHomePage(title: 'Flutter Demo Home Page'),
//      //home:const HomePage()

//     );
//   }
 }



// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});
//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         title: Text('Flutter basic details'),
//       ),
//       body:Padding(
//         padding:EdgeInsets.all(8.0),
//         child:Container(
//         child:Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Container(
//               height: 100,
//               width:100,
//               color:Colors.amber,
//               child:Text('Test'),
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
              
//               children:[
//                 Container(
//                   height: 100,
//                   width:100,
//                   color:Color.fromARGB(255, 236, 116, 30),
//                   child:Text('Second Row A'),
//                 ),
//                 Container(
//                   height: 100,
//                   width:100,
//                   color:Color.fromARGB(255, 52, 211, 129),
//                   child:Text('Second Row B'),
//                 ),
//               ]
//             )
//         ],)
//       )
//       ) 
//     );
//   }
// }
