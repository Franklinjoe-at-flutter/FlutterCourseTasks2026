// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_tasks/Entity/question_entity.dart';
import 'package:flutter_tasks/Widgets/question_list_tiles.dart';

class ListScreen extends StatefulWidget {
  final List<QuestionEntity> questions;
  const ListScreen({super.key, required this.questions});

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          "QuizApp",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
        ),
      ),

      body: QuestionListTiles(questions: widget.questions),
    );
  }
}
