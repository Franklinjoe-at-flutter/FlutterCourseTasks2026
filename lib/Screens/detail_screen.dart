import 'package:flutter/material.dart';
import 'package:flutter_tasks/Entity/question_entity.dart';
import 'package:flutter_tasks/Services/detail_services.dart';
import 'package:provider/provider.dart';

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

  final buttonStyle = TextButton.styleFrom(
    backgroundColor: Colors.blue,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
  );
  final textStyle = TextStyle(color: Colors.white);
  @override
  Widget build(BuildContext context) {
    return Consumer<DetailServices>(
      builder: (context, detailService, child) {
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
                    detailService.toggleButton1();
                    setState(() {
                      hint1 = widget.question.hint1;
                    });
                  },
                  child: Text("show hint 1", style: textStyle),
                ),
                AnimatedOpacity(
                  opacity: detailService.button1Pressed ? 1 : 0,
                  duration: Duration(seconds: 3),
                  child: Text(hint1),
                ),
                SizedBox(height: 10),

                TextButton(
                  style: buttonStyle,
                  onPressed: detailService.button1Pressed
                      ? () {
                          detailService.toggleButton2();
                          setState(() {
                            hint2 = widget.question.hint2;
                          });
                        }
                      : () {},
                  child: Text("show hint 2", style: textStyle),
                ),
                AnimatedOpacity(
                  opacity: detailService.button2Pressed ? 1 : 0,
                  duration: Duration(seconds: 3),
                  child: Text(hint2),
                ),
                SizedBox(height: 10),

                TextButton(
                  style: buttonStyle,
                  onPressed: detailService.button2Pressed
                      ? () {
                          setState(() {
                            answer = widget.question.solution;
                          });
                        }
                      : () {},
                  child: Text("show solution", style: textStyle),
                ),
                AnimatedOpacity(
                  opacity: answer != "" ? 1 : 0,
                  duration: Duration(seconds: 3),
                  child: Text(answer),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
