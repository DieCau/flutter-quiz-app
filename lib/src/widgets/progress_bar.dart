// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:quizz_app/src/controllers/question_controller.dart';

class ProgressBar extends StatelessWidget {
  const ProgressBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 35,
      decoration: BoxDecoration(
          border: Border.all(color: const Color(0xFF3F4768)),
          borderRadius: BorderRadius.circular(50)),
      child: GetBuilder<QuestionController>(
        init: QuestionController(),
        builder: (controller) {                   
        return Stack(
          children: [
            LayoutBuilder(
                builder: (context, constraints) => Container(
                    width: constraints.maxWidth * controller.animation.value,
                    decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [Color(0xFF46A0AE), Color(0xFF00FFCB)],
                        ),
                        borderRadius: BorderRadius.circular(50)))),
            Positioned.fill(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('${(controller.animation.value * 15).round()} seg'), 
                    SvgPicture.asset('assets/icons/clock.svg')],
                  ),
                )
              )
            ]
          );
        }
      )
    );
  }
}
