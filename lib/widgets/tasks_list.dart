import 'package:flutter/material.dart';
import 'package:todo/widgets/task_tile.dart';

// ignore: use_key_in_widget_constructors
class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children:  [
        TaskTile()
      ],
    );
  }
}