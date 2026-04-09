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
       hint1: 'league: Premier League',
      hint2: 'Table Position: 2nd',
      solution: 'Pep Guardiola',
    ),

    QuestionEntity(
      category: 'Sport',
      questionText: "Who is the best keeper ?",
      icon: Icons.sports_baseball_rounded,
      hint1: 'League: Premier',
      hint2: 'Table Position: 1st',
      solution: 'Arteta',
    ),

    QuestionEntity(
      category: 'Sport',
      questionText: "Who is the best dribbler ?",
      icon: Icons.sports_baseball_rounded,
      hint1: 'League: Inter miami',
      hint2: 'Table Position: 3rd',
      solution: 'Messi',
    ),

    QuestionEntity(
      category: 'Sport',
      questionText: "Who is the best striker ?",
      icon: Icons.sports_baseball_rounded,
      hint1: 'League: Saudi',
      hint2: 'Table Position: 1st',
      solution: 'CR7',
    ),

    QuestionEntity(
      category: 'Sport',
      questionText: "Who is the best defender ?",
      icon: Icons.sports_baseball_rounded,
      hint1: 'League: Premier League',
      hint2: '',
      solution: 'Gabriel',
    ),

    QuestionEntity(
      category: 'Music',
      questionText: "Who sang No me without you ?",
      icon: Icons.music_note,
      hint1: 'Stage Worship',
      hint2: 'Group',
      solution: 'Dusin',
    ),

    QuestionEntity(
      category: 'Music',
      questionText: "Who sang Delay ?",
      icon: Icons.music_note,
      hint1: 'Stage Worship',
      hint2: 'Group',
      solution: 'Theophilus',
    ),

    QuestionEntity(
      category: 'Music',
      questionText: "Who sang Baruch Hashem ?",
      icon: Icons.music_note,
      hint1: 'In House Worship',
      hint2: 'Group',
      solution: 'Dusin',
    ),

    QuestionEntity(
      category: 'Music',
      questionText: "Who sang earthen vessel ?",
      icon: Icons.music_note,
      hint1: 'In House Worship',
      hint2: 'Single',
      solution: 'Theophilus',
    ),

    QuestionEntity(
      category: 'Music',
      questionText: "Who sang labourCreed ?",
      icon: Icons.music_note,
     hint1: 'In House Worship',
      hint2: 'Single',
      solution: 'Theophilus',

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
