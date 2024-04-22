import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quizz_app/src/widgets/progress_bar.dart';

class BodyQuizz extends StatelessWidget {
  const BodyQuizz({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset("assets/icons/bg.svg", fit: BoxFit.cover, width: double.infinity,),
        const SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                ProgressBar(),
              ],
            )
          )
        )
      ]
    );   
      
   
  }
}

