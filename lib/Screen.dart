// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_tasks/Question_Item.dart';

class QuizScreen extends StatelessWidget {
  const QuizScreen({super.key});

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
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  backgroundColor: Colors.black54,
                  behavior: SnackBarBehavior.floating,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  content: Text("Clicked!"),
                  duration: Duration(seconds: 2),
                ),
              );
            },
            child: Icon(Icons.add, color: Colors.white),
          );
        },
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              QuestionItem(
                category: 'Sport',
                questionText: "Who is the best coach ?",
                imagePath: 'assets/sport.jpeg',
              ),
              QuestionItem(
                category: 'Sport',
                questionText: "Who is the best keeper ?",
                imagePath: 'assets/sport.jpeg',
              ),
              QuestionItem(
                category: 'Sport',
                questionText: "Who is the best dribbler ?",
                imagePath: 'assets/sport.jpeg',
              ),
              QuestionItem(
                category: 'Sport',
                questionText: "Who is the best striker ?",
                imagePath: 'assets/sport.jpeg',
              ),
              QuestionItem(
                category: 'Sport',
                questionText: "Who is the best defender ?",
                imagePath: 'assets/sport.jpeg',
              ),
              QuestionItem(
                category: 'Music',
                questionText: "Who sang Living Water ?",
                imagePath: 'assets/music.jpeg',
              ),
              QuestionItem(
                category: 'Music',
                questionText: "Who sang Delay ?",
                imagePath: 'assets/music.jpeg',
              ),
              QuestionItem(
                category: 'Music',
                questionText: "Who sang you reign forever ?",
                imagePath: 'assets/music.jpeg',
              ),
              QuestionItem(
                category: 'Music',
                questionText: "Who sang earthen vessel ?",
                imagePath: 'assets/music.jpeg',
              ),
              QuestionItem(
                category: 'Music',
                questionText: "Who sang labourCreed ?",
                imagePath: 'assets/music.jpeg',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
