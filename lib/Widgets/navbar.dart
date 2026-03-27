import 'package:flutter/material.dart';
import 'package:flutter_tasks/Entity/question_entity.dart';
import 'package:flutter_tasks/Screens/form_screen.dart';
import 'package:flutter_tasks/Screens/list_screen.dart';

class Navbar extends StatefulWidget {
  final List<QuestionEntity> questions;
  const Navbar({super.key, required this.questions});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title:const Text("Add New Question", style: TextStyle(color: Colors.white)),
      ),
      bottomNavigationBar: BottomNavigationBar(landscapeLayout: BottomNavigationBarLandscapeLayout.linear,
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
