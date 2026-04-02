import 'package:flutter/material.dart';
import 'package:flutter_tasks/Entity/question_entity.dart';

class DetailScreen extends StatefulWidget {
  final QuestionEntity question;
  const DetailScreen({super.key, required this.question});

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
            Text(widget.question.questionText),
            TextButton(
              style: buttonStyle,
              onPressed: () {
                setState(() {
                  b1Pressed = true;
                  hint1 = widget.question.hint1;
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
                        hint2 = widget.question.hint2;
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
                        answer = widget.question.solution;
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
