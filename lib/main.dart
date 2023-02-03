// ignore_for_file: public_member_api_docs

import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color scaffoldColor = Colors.blueAccent;

  List<Color> colors = [
    Colors.redAccent,
    Colors.teal,
    Colors.green,
    Colors.grey
  ];
  Random random = Random();

  @override
  Widget build(BuildContext context) {
    final Color tempcol = Color.fromRGBO(
      random.nextInt(255),
      random.nextInt(255),
      random.nextInt(255),
      1,
    );

    return GestureDetector(
      onTap: () {
        setState(() {
          scaffoldColor = tempcol;
        });
      },
      child: Scaffold(
        backgroundColor: scaffoldColor,
        body: const Center(
          child: Text(
            "Hey There.",
            style: TextStyle(color: Colors.white, fontSize: 30.0),
          ),
        ),
      ),
    );
  }
}
