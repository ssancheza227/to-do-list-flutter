import 'package:flutter/material.dart';
import '../models/task.dart';

class TaskProvider extends ChangeNotifier {
  List<Task> tasks = [];

  get getTasks {
    return tasks;
  }

  addTask(Task newTask) {
    tasks.add(newTask);

    notifyListeners();
  }

  removeTask(Task removeTask) {
    tasks.removeWhere((task) => task.title == removeTask.title);

    notifyListeners();
  }
}
