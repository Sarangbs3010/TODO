import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todolist/model/taskdata.dart';
import 'tasktile.dart';
import '../model/tasks.dart';

class TaskList extends StatelessWidget {
  const TaskList({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Data>(
      builder: (context, object, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTile(
              longPress: () {
                object.removeTask(object.tasks[index]);
              },
              isChecked: object.tasks[index].isDone,
              taskTitle: object.tasks[index].name,
              changeState: (bool val) {
                object.changeTaskState(object.tasks[index]);
              },
            );
          },
          itemCount: object.taskLength,
        );
      },
    );
  }
}
