import 'package:flutter/material.dart';
import 'package:flutterapp/homepage/home_page.dart';

void main (){
 runApp(Main());

}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,

    //theme: ThemeData.dart(),
     home: Homepage(),
    );  //MaterialApp



  }
}
