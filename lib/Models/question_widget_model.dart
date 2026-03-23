// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_tasks/Models/question_model.dart';
import 'package:flutter_tasks/Widgets/question_item_widget.dart';

class QuestionWidgetModel extends StatefulWidget {
  final String category;
  final String questionText;
  final String imagePath;

  const QuestionWidgetModel({
    super.key,
    required this.category,
    required this.questionText,
    required this.imagePath,
  });

  @override
  State<QuestionWidgetModel> createState() => _QuestionWidgetModelState();
}

class _QuestionWidgetModelState extends State<QuestionWidgetModel> {
  @override
  Widget build(BuildContext context) {
    return QuestionItemWidget(widget: widget);
  }
}

List<Widget> questionItemWidgets = questionItems.map((perQuestion) {
  return QuestionWidgetModel(
    category: perQuestion.category,
    questionText: perQuestion.questionText,
    imagePath: perQuestion.imagePath,
  );
}).toList();
