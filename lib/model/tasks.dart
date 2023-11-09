class Tasks {
  String name = "";
  bool isDone = false;

  Tasks({required this.name, required this.isDone});

  void changeIsDone() {
    isDone = !isDone;
  }
}
