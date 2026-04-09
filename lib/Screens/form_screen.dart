import 'package:flutter/material.dart';
import 'package:flutter_tasks/Entity/question_entity.dart';
import 'package:flutter_tasks/Widgets/responsive_layout.dart';

class FormScreen extends StatefulWidget {
  final List<QuestionEntity> questions;
  const FormScreen({super.key, required this.questions});

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  TextEditingController questionController = TextEditingController();
  TextEditingController categoryController = TextEditingController();
  String newQuestion = "";
  String newcategory = "";
  String? errorText;

  @override
  void dispose() {
    questionController.dispose();
    categoryController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final borderdecoration = OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: Colors.blue, width: 0.5),
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          "Add New Question",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            TextField(
              controller: questionController,
              decoration: InputDecoration(
                labelStyle: TextStyle(color: Colors.black),
                hintStyle: TextStyle(color: Colors.grey),
                errorText: errorText,
                labelText: "question",
                hintText: "enter new question",

                border: borderdecoration,
                enabledBorder: borderdecoration,
                focusedBorder: borderdecoration,
              ),
            ),
            const SizedBox(height: 15),
            TextField(
              controller: categoryController,
              decoration: InputDecoration(
                labelStyle: TextStyle(color: Colors.black),
                hintStyle: TextStyle(color: Colors.grey),
                errorText: errorText,
                labelText: "category",
                hintText: "enter category",

                border: borderdecoration,
                enabledBorder: borderdecoration,
                focusedBorder: borderdecoration,
              ),
            ),

            const SizedBox(height: 15),

            TextButton(
              onPressed: () {
                if (questionController.text.isNotEmpty &&
                    categoryController.text.isNotEmpty) {
                  errorText = null;
                  newQuestion = questionController.text;
                  newcategory = categoryController.text;

                  QuestionEntity addedQuestion = QuestionEntity(
                    category: newcategory,
                    questionText: newQuestion,
                    icon: Icons.grade_rounded,
                    hint1: 'Coming Soon',
                    hint2: 'Coming Soon',
                    solution: 'Coming Soon',
                  );

                  widget.questions.add(addedQuestion);

                  questionController.clear();
                  categoryController.clear();

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) =>
                          ResponsiveLayout(questions: widget.questions),
                    ),
                  );
                } else {
                  setState(() {
                    errorText = "Please fill in all fields";
                  });
                }
              },
              style: TextButton.styleFrom(
                backgroundColor: Colors.blue,
                minimumSize: Size(double.infinity, 48),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              child: const Text(
                "Add Question",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
