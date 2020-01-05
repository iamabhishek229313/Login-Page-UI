import 'package:flutter/material.dart';
import './Widgets/HomePage.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "Login UI",
      theme: new ThemeData(
        primaryColor: Colors.white ,
        secondaryHeaderColor: Colors.red.shade700,
      ),
      home : HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}