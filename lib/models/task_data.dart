import 'package:flutter/foundation.dart';
import 'task.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier {
  final List<Task> _tasks = [
    Task(name: 'Task 1'),
    Task(name: 'Task 2'),
    Task(name: 'Task 3'),
  ];

  int get taskCount {
    return _tasks.length;
  }

  void addTask(String newTasktitle) {
    final task = Task(name: newTasktitle);
    _tasks.add(task);
    notifyListeners();
  }

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  void updateTask(Task task) {
    task.toggleDone();
    // ! notifyListeners updates the values for all listeners
    notifyListeners();
  }
}
