
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class QuestionController extends GetxController with GetSingleTickerProviderStateMixin {
  
  late AnimationController _animationController;
  late Animation _animation;

  Animation get animation => _animation;

  @override
  void onInit() {
    super.onInit();
    _animationController = AnimationController(
      duration: const Duration(seconds: 15),
      vsync: this); 
    _animation = Tween<double>(begin: 0,end: 1)
      .animate(_animationController)
      ..addListener(() {
      update();
    });

    _animationController.forward();
  }

  @override
  void onClose() {
    _animationController.dispose();
    super.onClose();
  }
}