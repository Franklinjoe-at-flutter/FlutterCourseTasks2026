import 'package:flutter/material.dart';
import 'package:flutter_tasks/Entity/question_entity.dart';
import 'package:flutter_tasks/Widgets/responsive_layout.dart';

void main() {
  runApp(QuizApp());
}

class QuizApp extends StatelessWidget {
  final List<QuestionEntity> questions = [
    QuestionEntity(category: 'Sport', questionText: "Who is the best coach ?"),

    QuestionEntity(category: 'Sport', questionText: "Who is the best keeper ?"),

    QuestionEntity(
      category: 'Sport',
      questionText: "Who is the best dribbler ?",
    ),

    QuestionEntity(
      category: 'Sport',
      questionText: "Who is the best striker ?",
    ),

    QuestionEntity(
      category: 'Sport',
      questionText: "Who is the best defender ?",
    ),

    QuestionEntity(
      category: 'Music',
      questionText: "Who sang No me without you ?",
    ),

    QuestionEntity(category: 'Music', questionText: "Who sang Delay ?"),

    QuestionEntity(category: 'Music', questionText: "Who sang Baruch Hashem ?"),

    QuestionEntity(
      category: 'Music',
      questionText: "Who sang earthen vessel ?",
    ),

    QuestionEntity(category: 'Music', questionText: "Who sang labourCreed ?"),
  ];

  QuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ResponsiveLayout(questions: questions),
    );
  }
}
