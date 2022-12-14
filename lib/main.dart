import 'package:flutter/material.dart';
import 'package:flutter_widgets_assignment_1/view/pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      routes: {
        '/': (context) => homePage(),
        '/createSimulacra': (context) => CreateSimulacra(),
      },
    );
  }
}