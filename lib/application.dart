import 'package:flutter/material.dart';
import 'package:wordsoup/page/homepage.dart';

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sopa de Letrinhas',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Sopa de Letrinhas - Demo Home Page'),
    );
  }
}
