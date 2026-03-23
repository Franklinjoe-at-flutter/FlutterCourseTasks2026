import 'package:flutter/material.dart';
import 'package:flutter_tasks/Models/question_model.dart';

class ListViewWidget extends StatefulWidget {
  const ListViewWidget({super.key});

  @override
  State<ListViewWidget> createState() => _ListViewWidgetState();
}

class _ListViewWidgetState extends State<ListViewWidget> {
  @override
  Widget build(BuildContext context) {
    

    return ListView.separated(
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(questionItems[index].questionText),
          subtitle: Text(questionItems[index].category),
          leading: Image.asset(
            questionItems[index].imagePath,
            width: 50,
            height: 50,
          ),
        );
      },
      separatorBuilder: (context, index) {
        return SizedBox(height: 10);
      },
      itemCount: questionItems.length,
    );
  }
}
