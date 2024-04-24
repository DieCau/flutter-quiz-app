import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:quizz_app/src/controllers/question_controller.dart';
import 'package:quizz_app/src/widgets/progress_bar.dart';
import 'package:quizz_app/src/widgets/question_card.dart';

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
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: ProgressBar(),
              ),
              const SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: RichText(
                  text: TextSpan(
                    text: 'Pregunta 1',
                    style: Theme.of(context)
                    .textTheme
                    .headlineLarge!
                    .copyWith(color: const Color(0xFF8B94BC)),
                    children: [
                      TextSpan(
                        text: '/10',
                        style: Theme.of(context)
                          .textTheme
                          .headlineSmall!
                          .copyWith(color: const Color(0xFF8B94BC))
                      )
                    ]
                  )
                ),
              ),
              const Divider(
                thickness: 1.5,
              ),
              const SizedBox(height: 20,),
              Expanded(
                child: PageView.builder(
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

