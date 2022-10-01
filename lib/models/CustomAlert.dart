import 'package:flutter/material.dart';


class CustomAlertDialog extends StatelessWidget {
  CustomAlertDialog({ this.imageURL, this.massege});
  String? imageURL;
  String? massege;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Container(
        width: 200,
        height: 200,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "$imageURL",
              width: 100,
              height: 100,
            ),
            Center(
              child: Text(
                "$massege",
                style: TextStyle(fontSize: 25),
              ),
            ),
          ],
        ),
      ),
    );
    
  }
}

