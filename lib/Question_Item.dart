// ignore_for_file: file_names

import 'package:flutter/material.dart';

class QuestionItem extends StatelessWidget {
  final String category;
  final String questionText;
  final String imagePath;

  const QuestionItem({
    super.key,
    required,
    required this.category,
    required this.questionText,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(height: 40),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 50, width: 50, child: Image.asset(imagePath)),
            Padding(padding: const EdgeInsets.all(8.0), child: Text(category)),
          ],
        ),

        Text(questionText),
        SizedBox(height: 20),
      ],
    );
  }
}
