// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:project/appbarwithbg.dart';
import 'package:project/simple_appbar.dart';
import 'package:project/sliverappbar.dart';
import 'package:project/transparent_appbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: TransparentAppbar(),
      home: SliverAppBarLat(),
      theme: ThemeData(useMaterial3: true),
    );
  }
}
