// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_tasks/Entity/question_entity.dart';
import 'package:flutter_tasks/Screens/detail_screen.dart';

class QuestionWidget extends StatefulWidget {
  final List<QuestionEntity> questions = [
    QuestionEntity(
      category: 'Sport',
      questionText: "Who is the best coach ?",
      imagePath: 'assets/sport.jpeg',
      hint1: 'league: Premier League',
      hint2: 'Table Position: 2nd',
      solution: 'Pep Guardiola',
    ),

    QuestionEntity(
      category: 'Sport',
      questionText: "Who is the best keeper ?",
      imagePath: 'assets/sport.jpeg',
      hint1: 'League: Premier',
      hint2: 'Table Position: 1st',
      solution: 'Arteta',
    ),

    QuestionEntity(
      category: 'Sport',
      questionText: "Who is the best dribbler ?",
      imagePath: 'assets/sport.jpeg',
      hint1: 'League: Inter miami',
      hint2: 'Table Position: 3rd',
      solution: 'Messi',
    ),

    QuestionEntity(
      category: 'Sport',
      questionText: "Who is the best striker ?",
      imagePath: 'assets/sport.jpeg',
      hint1: 'League: Saudi',
      hint2: 'Table Position: 1st',
      solution: 'CR7',
    ),

    QuestionEntity(
      category: 'Sport',
      questionText: "Who is the best defender ?",
      imagePath: 'assets/sport.jpeg',
      hint1: 'League: Premier League',
      hint2: '',
      solution: 'Gabriel',
    ),

    QuestionEntity(
      category: 'Music',
      questionText: "Who sang No me without you ?",
      imagePath: 'assets/music.jpeg',
      hint1: 'Stage Worship',
      hint2: 'Group',
      solution: 'Dusin',
    ),

    QuestionEntity(
      category: 'Music',
      questionText: "Who sang Delay ?",
      imagePath: 'assets/music.jpeg',
      hint1: 'Stage Worship',
      hint2: 'Group',
      solution: 'Theophilus',
    ),

    QuestionEntity(
      category: 'Music',
      questionText: "Who sang Baruch Hashem ?",
      imagePath: 'assets/music.jpeg',
      hint1: 'In House Worship',
      hint2: 'Group',
      solution: 'Dusin',
    ),

    QuestionEntity(
      category: 'Music',
      questionText: "Who sang earthen vessel ?",
      imagePath: 'assets/music.jpeg',
      hint1: 'In House Worship',
      hint2: 'Single',
      solution: 'Theophilus',
    ),

    QuestionEntity(
      category: 'Music',
      questionText: "Who sang labourCreed ?",
      imagePath: 'assets/music.jpeg',
      hint1: 'In House Worship',
      hint2: 'Single',
      solution: 'Theophilus',
    ),
  ];

  QuestionWidget({super.key});
  @override
  State<QuestionWidget> createState() => _QuestionWidgetState();
}

class _QuestionWidgetState extends State<QuestionWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        return ListTile(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => DetailScreen(index: index)),
            );
          },
          title: Text(widget.questions[index].questionText),
          subtitle: Text(widget.questions[index].category),
          leading: Image.asset(
            widget.questions[index].imagePath,
            width: 50,
            height: 50,
          ),
        );
      },
      separatorBuilder: (context, index) {
        return SizedBox(height: 10);
      },
      itemCount: widget.questions.length,
    );
  }
}
