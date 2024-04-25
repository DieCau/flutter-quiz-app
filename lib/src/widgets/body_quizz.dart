import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizz_app/constants.dart';
import 'package:quizz_app/src/controllers/question_controller.dart';
import 'package:quizz_app/src/widgets/progress_bar.dart';
import 'package:quizz_app/src/widgets/question_card.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BodyQuizz extends StatelessWidget {
  const BodyQuizz({super.key});

  @override
  Widget build(BuildContext context) {

    QuestionController _questionController = Get.put(QuestionController()); 

    return Stack(
      children: [
        SvgPicture.asset("assets/icons/bg.svg", fit: BoxFit.cover, width: double.infinity,),
        SafeArea(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: quizzDefaultPadding),
                child: ProgressBar(),
              ),
              const SizedBox(height: quizzDefaultPadding,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: quizzDefaultPadding),
                child: RichText(
                  text: TextSpan(
                    text: 'Pregunta 1',
                    style: Theme.of(context)
                    .textTheme
                    .headlineLarge!
                    .copyWith(color: quizzGrayColor),
                    children: [
                      TextSpan(
                        text: '/10',
                        style: Theme.of(context)
                          .textTheme
                          .headlineSmall!
                          .copyWith(color: quizzGrayColor)
                      )
                    ]
                  )
                ),
              ),
              const Divider(
                thickness: 1.5,
              ),
              const SizedBox(height: quizzDefaultPadding,),
              Expanded(
                child: PageView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  controller: _questionController.pageController,
                  itemCount: _questionController.questions.length,
                  itemBuilder: (context, index) => QuestionCard(
                    question: _questionController.questions[index]),
                  )
                ),
            ],
          )
        )
      ]
    ); 
  }
}

