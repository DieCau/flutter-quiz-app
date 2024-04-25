import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizz_app/src/controllers/question_controller.dart';
import 'package:quizz_app/src/widgets/body_quizz.dart';

class QuizzPage extends StatelessWidget {
  const QuizzPage({super.key});

  @override
  Widget build(BuildContext context) {

    QuestionController controller = Get.put(QuestionController());

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: TextButton(
              onPressed: () {
                controller.nextQuestion;
              }, 
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