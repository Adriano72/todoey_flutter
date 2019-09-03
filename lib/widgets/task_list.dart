import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';
import 'package:todoey_flutter/models/task.dart';

class TasksList extends StatefulWidget {
  final List<Task> tasks;
  TasksList(this.tasks);

  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    List<Task> Todos = Provider.of<Todo>(context).tasks;

    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
            taskTitle: Todos[index].name,
            isChecked: Todos[index].isDone,
            checkboxCallback: (checkboxState) {
              setState(() {
                Todos[index].toggleDone();
              });
            });
      },
      itemCount: Todos.length,
    );
  }
}
