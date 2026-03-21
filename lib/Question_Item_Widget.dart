// ignore_for_file: file_names

import 'package:flutter/material.dart';

class QuestionItemWidget extends StatefulWidget {
  final String category;
  final String questionText;
  final String imagePath;

  const QuestionItemWidget({
    super.key,
    required,
    required this.category,
    required this.questionText,
    required this.imagePath,
  });

  @override
  State<QuestionItemWidget> createState() => _QuestionItemWidgetState();
}

class _QuestionItemWidgetState extends State<QuestionItemWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 50, width: 50, child: Image.asset(widget.imagePath)),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(widget.category),
              ),
            ],
          ),

          Text(widget.questionText),
        ],
      ),
    );
  }
}

List<Widget> questionItemWidgets = [
  QuestionItemWidget(
    category: 'Sport',
    questionText: "Who is the best coach ?",
    imagePath: 'assets/sport.jpeg',
  ),

  QuestionItemWidget(
    category: 'Sport',
    questionText: "Who is the best keeper ?",
    imagePath: 'assets/sport.jpeg',
  ),

  QuestionItemWidget(
    category: 'Sport',
    questionText: "Who is the best dribbler ?",
    imagePath: 'assets/sport.jpeg',
  ),

  QuestionItemWidget(
    category: 'Sport',
    questionText: "Who is the best striker ?",
    imagePath: 'assets/sport.jpeg',
  ),

  QuestionItemWidget(
    category: 'Sport',
    questionText: "Who is the best defender ?",
    imagePath: 'assets/sport.jpeg',
  ),

  QuestionItemWidget(
    category: 'Music',
    questionText: "Who sang Living Water ?",
    imagePath: 'assets/music.jpeg',
  ),

  QuestionItemWidget(
    category: 'Music',
    questionText: "Who sang Delay ?",
    imagePath: 'assets/music.jpeg',
  ),

  QuestionItemWidget(
    category: 'Music',
    questionText: "Who sang you reign forever ?",
    imagePath: 'assets/music.jpeg',
  ),

  QuestionItemWidget(
    category: 'Music',
    questionText: "Who sang earthen vessel ?",
    imagePath: 'assets/music.jpeg',
  ),

  QuestionItemWidget(
    category: 'Music',
    questionText: "Who sang labourCreed ?",
    imagePath: 'assets/music.jpeg',
  ),
];
