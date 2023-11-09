import 'package:flutter/material.dart';
import 'package:todolist/model/taskdata.dart';
import '../constants.dart';
import '../tasks_screens/tasklist.dart';
import 'package:provider/provider.dart';

class BottomTask extends StatelessWidget {
  // final Function add;

  @override
  Widget build(BuildContext context) {
    String task = "";
    return Container(
      color: Color(0xff757575),
      child: Container(
          height: 500,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25.0),
                topRight: Radius.circular(25.0)),
          ),
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Add Task',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                      color: Colors.blue),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 15.0, vertical: 8.0),
                  child: TextField(
                    onChanged: (val) {
                      task = val;
                    },
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20, color: Colors.black),
                    decoration: kBottomTaskStyle,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextButton(
                    style: kTextButtonStyle,
                    onPressed: () {
                      Provider.of<Data>(context, listen: false).addTask(task);
                      Navigator.pop(context);
                    },
                    child: Text(
                      'Add',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                )
              ],
            ),
          )),
    );
  }
}

class _TaskListState {}
