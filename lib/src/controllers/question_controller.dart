
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizz_app/src/models/questions.dart';

class QuestionController extends GetxController with GetTickerProviderStateMixin {
  
  late AnimationController _animationController;
  late Animation _animation;

  Animation get animation => _animation;

  late PageController _pageController;
  PageController get pageController => _pageController; 


  final List<Question> _questions = sampleData
  .map(
    (question) => Question(
    id: question['id'], 
    answer: question['answer_index'], 
    question: question['question'], 
    options: question['options'])
    ).toList();

  List<Question> get questions => _questions;

  bool _isAnswered = false;
  bool get isAnswered => _isAnswered;

  late int _correctAns;
  int get correctAns => _correctAns;

  late int _selectedAns;
  int get selectedAns => _selectedAns;

  final RxInt _questionNumber = 1.obs;
  RxInt get questionNumber => _questionNumber;

  int _numOfCorrectAns = 0;
  int get numOfCorrectAns => _numOfCorrectAns;


  @override
  void onInit() {
    
    _animationController = AnimationController(
      duration: const Duration(seconds: 15),
      vsync: this); 
    _animation = Tween<double>(begin: 0,end: 1)
      .animate(_animationController)
      ..addListener(() {
      update();
    });

    _animationController.forward();

    _pageController = PageController();

    super.onInit();
  }

  @override
    void onClose() {
    _animationController.dispose();
    _pageController.dispose();
    super.onClose();
  }

  void checkAns(Question question, int selectedIndex) {
    _isAnswered = true;
    _correctAns = question.answer;
    _selectedAns = selectedIndex;

    if(_correctAns == _selectedAns) _numOfCorrectAns++;

    _animationController.stop();
    update(); 

    Future.delayed(const Duration(seconds: 3), (){
      _isAnswered = false;
      _pageController.nextPage(
        duration: const Duration(milliseconds: 250), curve: Curves.ease);

      _animationController.reset();

      _animationController.forward();

    });
  }


}

