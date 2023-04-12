import 'package:flutter/material.dart';
import 'package:quiz_app_flutter/screens/score/score_screen_multiple_choice.dart';

import '../../data/data.dart';
import '../../models/question_model.dart';

class PlayQuiz extends StatefulWidget {
  const PlayQuiz({super.key});

  @override
  _PlayQuizState createState() => _PlayQuizState();
}

class _PlayQuizState extends State<PlayQuiz>
    with SingleTickerProviderStateMixin {
  List<QuestionModel> questions =  <QuestionModel>[];
  int index = 0;
  int points = 0;
  int correct = 0;
  int incorrect = 0;

  late AnimationController controller;

  late Animation animation;

  double beginAnim = 0.0;

  double endAnim = 1.0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    questions = getQuestions();

    controller =
        AnimationController(duration: const Duration(seconds: 10), vsync: this);
    animation = Tween(begin: beginAnim, end: endAnim).animate(controller)
      ..addListener(() {
        setState(() {
          // Change here any Animation object value.
        });
      });

    startProgress();

    animation.addStatusListener((AnimationStatus animationStatus) {
      if (animationStatus == AnimationStatus.completed) {
        if (index < questions.length - 1) {
          index++;
          resetProgress();
          startProgress();
        } else {
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      ScoreScreenMultipleChoice(
                        // score: points,
                        // totalQuestion: questions.length,
                        // correct: correct,
                        // incorrect: incorrect,
                      )
              ));
        }
      }
    });
  }

  startProgress() {
    controller.forward();
  }

  stopProgress() {
    controller.stop();
  }

  resetProgress() {
    controller.reset();
  }

  void nextQuestion() {
    if (index < questions.length - 1) {
      index++;
      resetProgress();
      startProgress();
    } else {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  ScoreScreenMultipleChoice(
                    // score: points,
                    // totalQuestion: questions.length,
                    // correct: correct,
                    // incorrect: incorrect,
                  )));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 80),
        width: MediaQuery
            .of(context)
            .size
            .width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
           const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                children: <Widget>[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        "${index + 1}/${questions.length}",
                        style: const TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        "Question",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w300, color: Colors.white),
                      )
                    ],
                  ),
                  const Spacer(),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        "$points",
                        style: const TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        "Points",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w300),
                      )
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Text(
              questions[index].getQuestion()! + "?",
              textAlign: TextAlign.center,
              style:const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w500),
            ),
            // SizedBox(
            //   height: 20,
            // ),
            // Container(
            //     child: LinearProgressIndicator(
            //       value: animation.value,
            //     )),
            // CachedNetworkImage(imageUrl: questions[index].getImageUrl(),),
            const SizedBox(height: 150,),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Expanded(
                      child: GestureDetector(
                        onTap: () {
                          if (questions[index].getAnswer() == "True") {
                            setState(() {
                              points = points + 20;
                              nextQuestion();
                              correct++;
                            });
                          } else {
                            setState(() {
                              points = points - 5;
                              nextQuestion();
                              incorrect++;
                            });
                          }
                        },
                        child: Container(
                          padding:const  EdgeInsets.symmetric(vertical: 12),
                          decoration: BoxDecoration(
                              color: Colors.lightBlue,
                              borderRadius: BorderRadius.circular(24)),
                          child: const Text(
                            "True",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                                fontWeight: FontWeight.w400),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      )),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                      child: GestureDetector(
                        onTap: () {
                          if (questions[index].getAnswer() == "False") {
                            setState(() {
                              points = points + 20;
                              nextQuestion();
                              correct++;
                            });
                          } else {
                            setState(() {
                              points = points - 5;
                              nextQuestion();
                              incorrect++;
                            });
                          }
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 12),
                          decoration: BoxDecoration(
                              color: Colors.redAccent,
                              borderRadius: BorderRadius.circular(24)),
                          child: Text(
                            "False",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                                fontWeight: FontWeight.w400),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }
}
