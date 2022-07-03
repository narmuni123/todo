import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class TaskTile extends StatefulWidget {

  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {

  bool isChecked = false;


  @override
  Widget build(BuildContext context) {
    return  ListTile(
      title:  Text(
        "This is a task",
        style: TextStyle(
          decoration: (isChecked == true) ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: TasksCheckBox(checkBoxState: isChecked,
        toggleCheckBoxState: (bool? checkboxState) {
          setState(() {
            isChecked = checkboxState!;
          });
        },),
    );
  }
}

class TasksCheckBox extends StatelessWidget {
  final bool checkBoxState;
  final Function(bool?) toggleCheckBoxState;

  const TasksCheckBox({required this.checkBoxState, required this.toggleCheckBoxState, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
      value: checkBoxState,
      onChanged: toggleCheckBoxState,
    );
  }
}