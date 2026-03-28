import 'package:flutter/material.dart';
import 'package:flutter_tasks/Entity/question_entity.dart';
import 'package:flutter_tasks/Widgets/mobile_layout.dart';
import 'package:flutter_tasks/Widgets/desktop_layout.dart';

class ResponsiveLayout extends StatelessWidget {
  final List<QuestionEntity> questions;
  const ResponsiveLayout({super.key, required this.questions});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return MobileLayout(questions: questions);
        } else {
          return DesktopLayout(questions: questions);
        }
      },
    );
  }
}
