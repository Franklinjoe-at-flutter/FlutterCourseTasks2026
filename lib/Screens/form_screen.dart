import 'package:flutter/material.dart';
import 'package:flutter_tasks/Entity/question_entity.dart';
import 'package:flutter_tasks/Widgets/question_list_tiles.dart';

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
  String errorText = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title:const Text("Add New Question", style: TextStyle(color: Colors.white)),
      ),
      body: Column(
        children: [
          TextField(
            controller: questionController,
            decoration: InputDecoration(
              errorText: errorText,
              labelText: "question",
              hintText: "enter new question",
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blue),
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ),
          const SizedBox(height: 15),
          TextField(
            controller: categoryController,
            decoration: InputDecoration(
              errorText: errorText,
              labelText: "category",
              hintText: "enter category",
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blue),
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ),
          const SizedBox(height: 15),
          TextButton(
            onPressed: () {
              if (questionController.text.isNotEmpty &&
                  categoryController.text.isNotEmpty) {
                newQuestion = questionController.text;
                newcategory = categoryController.text;

                QuestionEntity addedQuestion = QuestionEntity(
                  category: newcategory,
                  questionText: newQuestion,
                );

                widget.questions.add(addedQuestion);

                questionController.clear();
                categoryController.clear();

                questionController.dispose();
                categoryController.dispose();

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) =>
                        QuestionListTiles(questions: widget.questions),
                  ),
                );
              } else {
                errorText = "Please fill in all fields";
              }
            },
            style: TextButton.styleFrom(
              backgroundColor: Colors.blue,
              minimumSize: Size(double.infinity, 48),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            child: const Text("Add Question"),
          ),
        ],
      ),
    );
  }
}
