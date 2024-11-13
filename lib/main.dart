import 'package:flutter/material.dart';
import 'package:onlineshopdaffa/addproductlist.dart';
import 'package:onlineshopdaffa/allproductlist.dart';
import 'package:onlineshopdaffa/homepage.dart';
import 'package:onlineshopdaffa/productdetail.dart';
import 'package:onlineshopdaffa/productitem.dart';
import 'package:onlineshopdaffa/spalshscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
        useMaterial3: true,
      ),
      home:HomePage (),
    );
  }
}
