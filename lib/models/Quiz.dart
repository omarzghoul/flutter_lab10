import 'package:flutter/material.dart';

import '../component/question.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 6,
        child: Scaffold(
          backgroundColor: Colors.blueGrey.shade400,
          appBar: AppBar(
            backgroundColor: Colors.blueGrey.shade800,
            bottom: TabBar(tabs: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.question_answer),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.question_answer),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.question_answer),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.question_answer),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.question_answer),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.question_answer),
              ),
            ]),
            title: Text("Quiz App"),
          ),
          body: TabBarView(children: [
            Qus(
              answer_1: "painful",
              answer_2: "likely",
              answer_3: "favorable",
              answer_4: "slippery",
              qus_text: "Which is a synonym of propitious?",
              correctAns: 2,
            ),
            Qus(
              answer_1: "warlike",
              answer_2: "skilful",
              answer_3: "bloody",
              answer_4: "deadly",
              qus_text: "Which is a synonym of pernicious?",
              correctAns: 4,
            ),
            Qus(
              answer_1: "custody",
              answer_2: "betrayal",
              answer_3: "quality",
              answer_4: "information",
              qus_text: "Which is a synonym of perfidy?",
              correctAns: 2,
            ),
            Qus(
              answer_1: "Who",
              answer_2: "Was",
              answer_3: "Were",
              answer_4: "What",
              qus_text: "______ they the first customers of the day?",
              correctAns: 3,
            ),
            Qus(
              answer_1: "to",
              answer_2: "in",
              answer_3: "around",
              answer_4: "at",
              qus_text: "I will speak ______ Suzanne when I see her.",
              correctAns: 1,
            ),
            Column(
              children: [
                Expanded(
                  child: Qus(
                    answer_1: "after",
                    answer_2: "before",
                    answer_3: "still",
                    answer_4: "already",
                    qus_text: "Had they ______ arrived when you got there?",
                    correctAns: 4,
                  ),
                ),
              ],
            ),
          ]),
        ));
  }
}
