import 'package:flutter/material.dart';

import 'package:flutter_tasks/Models/question_widget_model.dart';

class QuestionItemWidget extends StatefulWidget {
  const QuestionItemWidget({super.key, required this.widget});

  final QuestionWidgetModel widget;

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
              SizedBox(
                height: 50,
                width: 50,
                child: Image.asset(widget.widget.imagePath),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(widget.widget.category),
              ),
            ],
          ),

          Text(widget.widget.questionText),
        ],
      ),
    );
  }
}
