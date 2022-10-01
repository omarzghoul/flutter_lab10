import 'package:flutter/material.dart';
import 'models/CustomAlert.dart';
import 'models/Quiz.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey.shade800,
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(
                    "https://image.freepik.com/free-photo/flat-lay-workplace-arrangement-purple-background-with-copy-space_23-2148404535.jpg"))),
        child: Center(
          child: GestureDetector(
            onTap: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      content: Container(
                        width: 200,
                        height: 200,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "images/image1.jpg",
                              width: 100,
                              height: 100,
                            ),
                            ElevatedButton.icon(
                              onPressed: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return Quiz();
                                }));
                              },
                              icon: Icon(Icons.people),
                              label: Text("Go to Quiz page"),
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blueGrey.shade800),
                            ),
                          ],
                        ),
                      ),
                    );
                  });
            },
            child: Center(
              child: Text(
                "Do you think you are good in english press me if yes:)",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 25, color: Colors.grey.shade50),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
