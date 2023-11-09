import 'package:flutter/material.dart';

const kBottomTaskStyle = InputDecoration(
    enabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: Colors.blue, width: 3),
    ),
    focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: Colors.blue, width: 3),
    ),
    hintText: 'Enter the Task',
    hintStyle: TextStyle(
      fontSize: 20,
    ));

var kTextButtonStyle = TextButton.styleFrom(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(18.0),
    ),
    foregroundColor: Colors.blue,
    backgroundColor: Colors.blue);
