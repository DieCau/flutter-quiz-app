import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:quizz_app/src/constants.dart';
import 'package:quizz_app/src/controllers/question_controller.dart';

class ScorePage extends StatelessWidget {
  const ScorePage({super.key});

  @override
  Widget build(BuildContext context) {

    QuestionController qnController = Get.put(QuestionController()); 

    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          SvgPicture.asset("assets/icons/bg.svg", fit: BoxFit.cover, width: double.infinity),
          SafeArea(
            child: Column(
              children: [
                const Spacer(flex: 3),
                Text('Score', 
                  style: Theme.of(context)
                         .textTheme
                         .displaySmall!
                         .copyWith(color: quizzSecondaryColor),),
                const Spacer(),
                Text('${qnController.correctAns * 10}/${qnController.questions.length * 10}',
                  style: Theme.of(context)
                    .textTheme
                    .headlineMedium!
                    .copyWith(color: quizzSecondaryColor),
                ),
                const Spacer(flex: 3)
              ],
            )
          ),
        ],
      )
    );
  }
}