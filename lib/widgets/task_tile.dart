import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class TaskTile extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: const Text(
        "This is a task",
      ),
      trailing: Checkbox(
        value: false,
        onChanged: (value){

        },
      ),
    );
  }
}