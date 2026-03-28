import 'package:flutter/widgets.dart';

class QuestionEntity {
  final String category;
  final String questionText;
  final IconData icon;
  const QuestionEntity({
    required this.category,
    required this.questionText,
    required this.icon,
  });
}
