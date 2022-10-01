import 'package:flutter/material.dart';
import 'package:lab_10/models/CustomAlert.dart';

class Qus extends StatelessWidget {
  Qus(
      {required this.qus_text,
      required this.answer_1,
      required this.answer_2,
      required this.answer_3,
      required this.answer_4,
      required this.correctAns});

  String? qus_text;
  String? answer_1;

  String? answer_2;

  String? answer_3;

  String? answer_4;
  int? correctAns;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey.shade400,
      child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            height: 120,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fitWidth,
                    image: NetworkImage(
                        "https://i.pinimg.com/originals/a6/88/66/a68866bc1252474fa15ed84b149b34b8.jpg"))),
            child: Text(
              "$qus_text",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.orange),
            ),
          ),
          Divider(
            height: 50,
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              children: <Widget>[
                GestureDetector(
                    onTap: () {
                      correctAns == 1
                          ? trueDialog(context)
                          : falseDialog(context);
                    },
                    child: customContainer(answer_1)),
                GestureDetector(
                    onTap: () {
                      correctAns == 2
                          ? trueDialog(context)
                          : falseDialog(context);
                    },
                    child: customContainer(answer_2)),
                GestureDetector(
                    onTap: () {
                      correctAns == 3
                          ? trueDialog(context)
                          : falseDialog(context);
                    },
                    child: customContainer(answer_3)),
                GestureDetector(
                    onTap: () {
                      correctAns == 4
                          ? trueDialog(context)
                          : falseDialog(context);
                    },
                    child: customContainer(answer_4)),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget customContainer(String? answer) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.blueGrey.shade600,
        ),
        alignment: Alignment.center,
        margin: EdgeInsets.all(4),
        width: double.infinity,
        height: double.infinity,
        child: Text('$answer',
            style: TextStyle(fontSize: 25, color: Colors.grey.shade200)));
  }

  void trueDialog(context) {
    showDialog(
      context: context,
      builder: (context) => CustomAlertDialog(
          imageURL: "images/image1.jpg", massege: "here we go"),
    );
  }

  void falseDialog(context) {
    showDialog(
      context: context,
      builder: (context) => CustomAlertDialog(
          imageURL: "images/image2.png", massege: "try again"),
    );
  }
}
