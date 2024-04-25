import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:quizz_app/src/pages/quizz_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SvgPicture.asset('assets/icons/bg.svg', fit: BoxFit.cover, width: double.infinity,),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Spacer(flex: 2),
                  Text('Vamos a QuizzAR,',
                    style: Theme.of(context).textTheme.headlineLarge!.copyWith(color: Colors.white, fontWeight: FontWeight.bold) 
                  ),
                  const Text('Ingresa Tu Información para Jugar...'),
                  const Spacer(),
                  TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color(0xFF1C2341),
                      border: InputBorder.none,
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Color(0xFF00FFCB)),
                        borderRadius: BorderRadius.circular(10)),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Color(0xFF00FFCB)),
                        borderRadius: BorderRadius.circular(10)),
                      prefixIcon: const Icon(Icons.sports_esports_outlined, color: Color(0xFF00FFCB),),
                      labelText: 'Jugador',
                      labelStyle: const TextStyle(color: Color(0xFF00FFCB)),                                              
                    )
                  ),
                  const Spacer(),
                  InkWell(
                    onTap: () => Get.to(const QuizzPage()),
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(20 * 0.75),
                      alignment: Alignment.center,            
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Color(0xFF46A0AE), Color(0xFF00FFCB)],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Text(
                        'Comencemos a QuizAR!',
                        style: Theme.of(context).textTheme.labelLarge?.copyWith(color: Colors.black)                  
                      ),
                    ),
                  ),
                  const Spacer(flex: 2,)
                ],
              ),
            )
          ),
        ],
      ),
    );
  }
}