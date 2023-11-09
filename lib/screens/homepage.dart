import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todolist/model/taskdata.dart';
import '../tasks_screens/tasklist.dart';
import 'bottomtask.dart';
import '../model/tasks.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Tasks> tasks = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: EdgeInsets.only(
                top: 40.0, right: 30.0, left: 30.0, bottom: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 30,
                ),
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.list,
                    color: Colors.blue,
                    size: 35,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(
                    "Todoey",
                    style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.w900,
                        color: Colors.white),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Consumer<Data>(
                    builder: (context, object, child) {
                      return Text(
                        object.tasks.length == 0
                            ? 'No Tasks'
                            : object.tasks.length == 1
                                ? '${object.taskLength} Task'
                                : '${object.taskLength} Tasks',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25.0),
                    topRight: Radius.circular(25.0)),
                color: Colors.white,
              ),
              child: Provider.of<Data>(context).tasks.length != 0
                  ? TaskList()
                  : Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text(
                        "Add Task",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w500,
                            color: Colors.blue),
                      ),
                    ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              isScrollControlled: true,
              context: context,
              builder: (context) => BottomTask());
        },
        child: Icon(
          Icons.add,
          weight: 50,
          size: 30,
          color: Colors.white,
        ),
      ),
    );
  }
}
