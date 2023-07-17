import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'detailapp.dart';

void main() {
  //set Color for status bar
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
        statusBarColor:
            Colors.blue), // Replace Colors.blue with your desired color
  );
  //
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.amber,
        ),
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Food program use with Stack '),
      ),
      //body
      body: SafeArea(child: DetailApp()),
    );
  }
}
