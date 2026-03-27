// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_tasks/Entity/question_entity.dart';

class QuestionListTiles extends StatefulWidget {
  final List<QuestionEntity> questions;

  const QuestionListTiles({super.key, required this.questions});
  @override
  State<QuestionListTiles> createState() => _QuestionListTilesState();
}

class _QuestionListTilesState extends State<QuestionListTiles> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        final question = widget.questions[index];
        return ListTile(
          title: Text(question.questionText),
          subtitle: Text(question.category),
        );
      },
      separatorBuilder: (context, index) {
        return const SizedBox(height: 10);
      },
      itemCount: widget.questions.length,
    );
  }
}
