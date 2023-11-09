import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TaskTile extends StatelessWidget {
  const TaskTile(
      {super.key,
      required this.isChecked,
      required this.taskTitle,
      required this.changeState,
      required this.longPress});

  final bool isChecked;
  final String taskTitle;
  final Function changeState;
  final Function longPress;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
            decorationColor: Colors.blue,
            decorationThickness: 3.0,
            decoration:
                isChecked ? TextDecoration.lineThrough : TextDecoration.none,
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w500),
      ),
      onLongPress: () {
        longPress();
      },
      trailing: Checkbox(
        onChanged: (val) {
          changeState(val);
        },
        value: isChecked,
        activeColor: Colors.blue,
        side: MaterialStateBorderSide.resolveWith(
          (states) => BorderSide(width: 3.0, color: Colors.blue),
        ),
      ),
    );
  }
}

// void changeState(bool val) {
//   setState(() {
//     isChecked = val;
//   });
// }
