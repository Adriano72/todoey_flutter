import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Task {
  final String name;
  bool isDone;

  Task({this.name, this.isDone = false});

  void toggleDone() {
    isDone = !isDone;
  }
}

class Todo extends ChangeNotifier {
  List<Task> tasks = [];

  void addTask(Task newTodo) {
    tasks.add(newTodo);
    notifyListeners();
  }
}
