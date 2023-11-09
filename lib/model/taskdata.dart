import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'tasks.dart';
import 'dart:collection';

class Data extends ChangeNotifier {
  List<Tasks> _tasks = [Tasks(name: 'Task 1', isDone: false)];
  int get taskLength {
    return _tasks.length;
  }

  UnmodifiableListView<Tasks> get tasks {
    return UnmodifiableListView(_tasks);
  }

  void addTask(String taskName) {
    Tasks newTask = Tasks(name: taskName, isDone: false);
    _tasks.add(newTask);
    notifyListeners();
  }

  void changeTaskState(Tasks obj) {
    obj.changeIsDone();
    notifyListeners();
  }

  void removeTask(Tasks obj) {
    _tasks.remove(obj);
    notifyListeners();
  }
}
