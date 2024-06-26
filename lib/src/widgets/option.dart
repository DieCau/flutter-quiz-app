import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:quizz_app/src/constants.dart';
import 'package:quizz_app/src/controllers/question_controller.dart';

class Option extends StatelessWidget {

  final String text;
  final int index;
  final VoidCallback press;


  const Option({
    super.key, 
    required this.text, 
    required this.index, 
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<QuestionController>(
      init: QuestionController(),
      builder: (qnController) {

        Color getTheRightColor() {
          if(qnController.isAnswered) {
            if(index == qnController.correctAns ) {
              return quizzGreenColor;
            } else if 
              (index == qnController.selectedAns && 
              qnController.selectedAns != qnController.correctAns) {
                return quizzRedColor;
            }
          }
          return quizzGrayColor;
        }

        IconData getTheRightIcon() {
          return getTheRightColor() == quizzRedColor 
          ? Icons.close
          : Icons.done;          
        }
      

        return InkWell(
          onTap: press,
          child: Container(
            margin: const EdgeInsets.only(top: 20),
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
                border: Border.all(color: getTheRightColor()),
                borderRadius: BorderRadius.circular(15)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '${index + 1}. $text',
                  style: TextStyle(color: getTheRightColor(), fontSize: 14),
                ),
                Container(
                  height: 25,
                  width: 25,
                  decoration: BoxDecoration(
                    color: getTheRightColor() == quizzGrayColor 
                      ? Colors.transparent
                      : getTheRightColor(),
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(color: getTheRightColor()),),
                  child: getTheRightColor() == quizzGrayColor 
                    ? null
                    : Icon(getTheRightIcon(), size: 16,),
                ),
              ],
            ),
          ),
        );
      }
    );
  }   
}
