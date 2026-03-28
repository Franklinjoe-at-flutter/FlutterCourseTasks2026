import 'package:flutter/material.dart';
import 'package:flutter_tasks/Entity/question_entity.dart';
import 'package:flutter_tasks/Widgets/responsive_layout.dart';

void main() {
  runApp(QuizApp());
}

class QuizApp extends StatelessWidget {
  final List<QuestionEntity> questions = [
    QuestionEntity(
      category: 'Sport',
      questionText: "Who is the best coach ?",
      icon: Icons.sports_baseball_rounded,
    ),

    QuestionEntity(
      category: 'Sport',
      questionText: "Who is the best keeper ?",
      icon: Icons.sports_baseball_rounded,
    ),

    QuestionEntity(
      category: 'Sport',
      questionText: "Who is the best dribbler ?",
      icon: Icons.sports_baseball_rounded,
    ),

    QuestionEntity(
      category: 'Sport',
      questionText: "Who is the best striker ?",
      icon: Icons.sports_baseball_rounded,
    ),

    QuestionEntity(
      category: 'Sport',
      questionText: "Who is the best defender ?",
      icon: Icons.sports_baseball_rounded,
    ),

    QuestionEntity(
      category: 'Music',
      questionText: "Who sang No me without you ?",
      icon: Icons.music_note,
    ),

    QuestionEntity(
      category: 'Music',
      questionText: "Who sang Delay ?",
      icon: Icons.music_note,
    ),

    QuestionEntity(
      category: 'Music',
      questionText: "Who sang Baruch Hashem ?",
      icon: Icons.music_note,
    ),

    QuestionEntity(
      category: 'Music',
      questionText: "Who sang earthen vessel ?",
      icon: Icons.music_note,
    ),

    QuestionEntity(
      category: 'Music',
      questionText: "Who sang labourCreed ?",
      icon: Icons.music_note,
    ),
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
