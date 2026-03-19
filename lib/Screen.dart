import 'package:flutter/material.dart';
import 'package:flutter_tasks/question_item_widget.dart';

class Screen extends StatelessWidget {
  const Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "QuizApp",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
        ),
      ),

      floatingActionButton: Builder(
        builder: (context) {
          return FloatingActionButton(
            backgroundColor: Colors.blue,
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  backgroundColor: Colors.black54,
                  behavior: SnackBarBehavior.floating,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  content: Text("Clicked!"),
                  duration: Duration(seconds: 2),
                ),
              );
            },
            child: Icon(Icons.add, color: Colors.white),
          );
        },
      ),
      body: Builder(
        builder: (context) {
          Size screenSize = MediaQuery.of(context).size;
          bool isWide = screenSize.width > 600;

          return SingleChildScrollView(
            scrollDirection: isWide ? Axis.vertical : Axis.horizontal,
            child: isWide
                ? Column(children: questionItemWidgets)
                : Row(children: questionItemWidgets),
          );
        },
      ),
    );
  }
}
