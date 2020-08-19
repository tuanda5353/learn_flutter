import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answer;
  final Function onPressed;

  Answer(this.answer, this.onPressed);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      child: RaisedButton(
        child: Text(answer),
        onPressed: onPressed,
      ),
    );
  }
}
