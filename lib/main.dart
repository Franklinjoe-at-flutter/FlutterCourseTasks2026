import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(QuizApp());
}

class QuizApp extends StatelessWidget {
  const QuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    Question que = Question(
      category: questionIndex <= 4 ? "Sport" : "Music",
      imagePath: questionIndex <= 4 ? "assets/sport.jpeg" : "assets/music.jpeg",
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 50,
                    width: 50,
                    child: Image.asset(que.imagePath),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(que.category),
                  ),
                ],
              ),

              Text(que.questionText),
            ],
          ),
        ),
      ),
    );
  }
}

List<String> allQuestions = [
  "Who is the best coach ?",
  "Who is the best keeper ?",
  "Who is the best dribbler ?",
  "Who is the best striker ?",
  "Who is the best defender ?",
  "Who sang Living Water ?",
  "Who sang Delay ?",
  "Who sang you reign forever ?",
  "Who sang earthen vessel ?",
  "Who sang labourCreed ?",
];
Random randomquestion = Random();
int questionIndex = randomquestion.nextInt(allQuestions.length);

class Question {
  String category;
  String questionText = allQuestions[questionIndex];
  String imagePath;

  Question({required this.category, required this.imagePath});
}
