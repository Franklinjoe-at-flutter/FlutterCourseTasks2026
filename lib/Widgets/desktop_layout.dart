import 'package:flutter/material.dart';
import 'package:flutter_tasks/Entity/question_entity.dart';
import 'package:flutter_tasks/Screens/form_screen.dart';
import 'package:flutter_tasks/Screens/list_screen.dart';

class DesktopLayout extends StatefulWidget {
  final List<QuestionEntity> questions;
  const DesktopLayout({super.key, required this.questions});

  @override
  State<DesktopLayout> createState() => _DesktopLayoutState();
}

class _DesktopLayoutState extends State<DesktopLayout> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          NavigationRail(
            destinations: const [
              NavigationRailDestination(
                icon: Icon(Icons.list),
                label: Text("List Screen"),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.add),
                label: Text("Form Screen"),
              ),
            ],
            selectedIndex: currentIndex,
            onDestinationSelected: (value) {
              setState(() {
                currentIndex = value;
              });
            },
          ),
          Expanded(
            child: currentIndex == 0
                ? ListScreen(questions: widget.questions)
                : FormScreen(questions: widget.questions),
          ),
        ],
      ),
    );
  }
}
