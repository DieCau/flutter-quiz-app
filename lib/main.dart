import 'package:flutter/material.dart';
import 'package:quizz_app/src/pages/quizz_page.dart';

void main() => runApp(const QuizzApp());

class QuizzApp extends StatelessWidget {
  const QuizzApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      theme: ThemeData.dark(),
      home: const QuizzPage()
    );
  }
}