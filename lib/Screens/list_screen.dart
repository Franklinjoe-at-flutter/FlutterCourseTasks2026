// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_tasks/Entity/question_entity.dart';
import 'package:flutter_tasks/Screens/detail_screen.dart';
import 'package:flutter_tasks/Services/detail_services.dart';
import 'package:provider/provider.dart';

class ListScreen extends StatefulWidget {
  final List<QuestionEntity> questions;
  const ListScreen({super.key, required this.questions});

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          "Question List",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
        ),
      ),

      body: ListView.separated(
        itemBuilder: (context, index) {
          final question = widget.questions[index];
          return ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => ChangeNotifierProvider(
                    create: (context) => DetailServices(),
                    child: DetailScreen(question: question),
                  ),
                ),
              );
            },
            leading: Icon(question.icon),
            title: Text(question.questionText),
            subtitle: Text(question.category),
          );
        },
        separatorBuilder: (context, index) {
          return const SizedBox(height: 10);
        },
        itemCount: widget.questions.length,
      ),
    );
  }
}
