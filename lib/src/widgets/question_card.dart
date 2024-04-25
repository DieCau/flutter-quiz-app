import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizz_app/src/controllers/question_controller.dart';
import 'package:quizz_app/src/models/questions.dart';
import 'package:quizz_app/src/widgets/option.dart';

class QuestionCard extends StatelessWidget {

  final Question question;


  const QuestionCard({
    super.key,
    required this.question,
  });

  @override
  Widget build(BuildContext context) {

  QuestionController _controller = Get.put(QuestionController());
    
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        children: [
          Text(question.question,
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .copyWith(color: const Color(0xFF101010))),
          const SizedBox(
            height: 10,
          ),
         ...List.generate(question.options.length, 
            (index) => Option(
              index: index, 
              text: question.options[index], 
              press: ()=> _controller.checkAns(question, index)
            ),
          )
        ],
      ),
    );
  }
}
