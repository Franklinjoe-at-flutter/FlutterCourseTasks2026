import 'package:flutter/widgets.dart';

class QuestionEntity {
  final String category;
  final String questionText;
  final IconData icon;
  final String hint1;
  final String hint2;
  final String solution;
  
  const QuestionEntity({
    required this.category,
    required this.questionText,
    required this.icon,
    required this.hint1,
    required this.hint2,
    required this.solution,
  });
}
