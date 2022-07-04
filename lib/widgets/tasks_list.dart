import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/models/task_data.dart';
import 'package:todo/widgets/task_tile.dart';

// ignore: use_key_in_widget_constructors
class TasksList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child){
        return ListView.builder(
          itemCount: taskData.taskCount,
          itemBuilder: (_, int index) {
            return TaskTile(
                isChecked: taskData.task[index].isDone,
                title: taskData.task[index].name,
                checkBoxCallBack:  (bool? checkboxState) {
                  taskData.updateTask(taskData.task[index]);
                },
                longPressCallback: (){
                  taskData.deleteTask(taskData.task[index]);
            },
            );
          },
        );
      },
    );
  }
}
