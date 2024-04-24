// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:quizz_app/src/widgets/body_quizz.dart';

class QuizzPage extends StatelessWidget {
  const QuizzPage({super.key});

  @override
  Widget build(BuildContext context) {



    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: TextButton(
              onPressed: () { print('Holaaaaaa'); }, 
              style: TextButton.styleFrom(textStyle: const TextStyle(fontSize: 14)),
              child: const Text('Skip'),
            ),
          ),
        ],
      ),
      body: const BodyQuizz(),
    );
  }
}