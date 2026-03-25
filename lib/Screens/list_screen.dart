// ignore_for_file: file_names

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_tasks/Screens/detail_screen.dart';
import 'package:flutter_tasks/Widgets/question_widget.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({super.key});

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  Random random = Random();
  QuestionWidget repo = QuestionWidget();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "QuizApp",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: () {
          setState(() {
         int index = random.nextInt(repo.questions.length);
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => DetailScreen(index: index)),
            );
          });
        },
        child: Icon(Icons.add, color: Colors.white),
      ),
      body: QuestionWidget(),
    );
  }
}
