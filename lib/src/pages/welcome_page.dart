
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Spacer(flex: 2),
                  Text("Let's Play Quiz,",
                    style: Theme.of(context).textTheme.headlineLarge?.copyWith(color: Colors.white, fontWeight: FontWeight.bold) 
                  ),
                  const Text('Enter your information below'),
                  const Spacer(),
                  const TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xFF1C2341),
                      hintText: 'Full Name',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12))
                      )
                    ),
                  ),
                  const Spacer(),
                  InkWell(
                    onTap: ()=> print('Click en Lets'),
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(20 * 0.75),
                      alignment: Alignment.center,            
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Color(0xFF46A0AE), Color(0xFF00FFCB)],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,),
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                      child: Text(
                        'Lets Start Quiz',
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