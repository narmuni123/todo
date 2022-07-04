import 'package:flutter/material.dart';
import 'package:todo/models/tasks.dart';
import 'package:todo/widgets/task_tile.dart';

// ignore: use_key_in_widget_constructors
class TasksList extends StatefulWidget {

  final List<Task> task;

  TasksList({required this.task});


  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.task.length,
      itemBuilder: (_, int index) {
        return TaskTile(
          isChecked: widget.task[index].isDone,
          title: widget.task[index].name,
          checkBoxCallBack:  (bool? checkboxState) {
            setState(() {
              widget.task[index].toggleDone();
            });
          }
        );
      },
    );
  }
}
