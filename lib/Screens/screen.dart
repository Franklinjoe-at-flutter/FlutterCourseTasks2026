// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_tasks/Models/question_model.dart';
import 'package:flutter_tasks/Widgets/list_view_widget.dart';

class Screen extends StatefulWidget {
  const Screen({super.key});

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
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

      floatingActionButton: Builder(
        builder: (context) {
          return FloatingActionButton(
            backgroundColor: Colors.blue,
            onPressed: () {
              setState(() {
                questionItems.add(
                  QuestionModel(
                    category: "Art",
                    questionText: "whats your favourite design tool ?",
                    imagePath: "assets/paint.jpeg",
                  ),
                );
              });
            },
            child: Icon(Icons.add, color: Colors.white),
          );
        },
      ),
      body: Builder(
        builder: (context) {
          return ListViewWidget();
        },
      ),
    );
  }
}
