import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'task.dart';

class TasksData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(detail: 'Task 1'),
//    Task(detail: 'Task 1'),
//    Task(detail: 'Task 1'),
//    Task(detail: 'Task 1'),
//    Task(detail: 'Task 1'),
//    Task(detail: 'Task 1'),
//    Task(detail: 'Task 1'),
//    Task(detail: 'Task 1'),
//    Task(detail: 'Task 1'),
//    Task(detail: 'Task 1'),
//    Task(detail: 'Task 1'),
//    Task(detail: 'Task 1'),
  ];

  UnmodifiableListView get tasks {
    return UnmodifiableListView(_tasks);
  }

  void addTask(Task newTask) {
    _tasks.add(newTask);
    notifyListeners();
    print('new task added');
  }

  void toggleTaskState(int index) {
    _tasks[index].toggleState();
    notifyListeners();
  }

  void delete(int index) {
    _tasks.removeAt(index);
    notifyListeners();
  }
}
