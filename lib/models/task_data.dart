import 'dart:collection';
import 'package:flutter/material.dart';
import 'package:todo/models/tasks.dart';

class TaskData extends ChangeNotifier{

  List<Task> _task = [];

  UnmodifiableListView<Task> get task{
    return UnmodifiableListView(_task);
  }

  int get taskCount{
    return _task.length;
  }

  addTask(String taskTitle){
    final newTask = Task(name: taskTitle);
    _task.add(newTask);
    notifyListeners();
  }

  void updateTask(Task task){
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task){
    _task.remove(task);
    notifyListeners();
  }

}