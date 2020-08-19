import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Question extends StatelessWidget {
  final String question;

  Question(this.question);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:EdgeInsets.all(10),
      padding: EdgeInsets.all(8),
      color: Colors.blue,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            question,
            style: TextStyle(
                color: Colors.red,
                fontSize: 28,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
