import 'package:flutter/material.dart';
import 'package:flutter_tasks/Entity/question_entity.dart';
import 'package:flutter_tasks/Screens/form_screen.dart';
import 'package:flutter_tasks/Screens/list_screen.dart';

class MobileLayout extends StatefulWidget {
  final List<QuestionEntity> questions;
  const MobileLayout({super.key, required this.questions});

  @override
  State<MobileLayout> createState() => _MobileLayoutState();
}

class _MobileLayoutState extends State<MobileLayout> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.list), label: "List Screen"),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: "Form Screen"),
        ],
      ),
      body: currentIndex == 0
          ? ListScreen(questions: widget.questions)
          : FormScreen(questions: widget.questions),
    );
  }
}
