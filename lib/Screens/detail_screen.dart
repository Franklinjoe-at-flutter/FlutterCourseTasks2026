import 'package:flutter/material.dart';
import 'package:flutter_tasks/Widgets/question_widget.dart';

class DetailScreen extends StatefulWidget {
  final int index;

  const DetailScreen({super.key, required this.index});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  String hint1 = "";
  String hint2 = "";
  String answer = "";
  bool b1Pressed = false;
  bool b2Pressed = false;
  final buttonStyle = TextButton.styleFrom(
    backgroundColor: Colors.blue,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
  );
  final textStyle = TextStyle(color: Colors.white);
  @override
  Widget build(BuildContext context) {
    QuestionWidget que = QuestionWidget();
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Screen", style: textStyle),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(que.questions[widget.index].questionText),
            TextButton(
              style: buttonStyle,
              onPressed: () {
                setState(() {
                  b1Pressed = true;
                  hint1 = que.questions[widget.index].hint1;
                });
              },
              child: Text("show hint 1", style: textStyle),
            ),
            Text(hint1),
            SizedBox(height: 10),

            TextButton(
              style: buttonStyle,
              onPressed: b1Pressed
                  ? () {
                      setState(() {
                        b2Pressed = true;
                        hint2 = que.questions[widget.index].hint2;
                      });
                    }
                  : () {},
              child: Text("show hint 2", style: textStyle),
            ),
            Text(hint2),
            SizedBox(height: 10),

            TextButton(
              style: buttonStyle,
              onPressed: b2Pressed
                  ? () {
                      setState(() {
                        answer = que.questions[widget.index].solution;
                      });
                    }
                  : () {},
              child: Text("show solution", style: textStyle),
            ),
            Text(answer),
          ],
        ),
      ),
    );
  }
}
