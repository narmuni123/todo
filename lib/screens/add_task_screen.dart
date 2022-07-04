import 'package:flutter/material.dart';

class AddTasksScreen extends StatelessWidget {

  final Function addTaskCallBack;

  AddTasksScreen({Key? key, required this.addTaskCallBack}) : super(key: key);

  String newString = "";


  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff757575),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            topLeft: Radius.circular(20),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
                "Add Task",
              style: TextStyle(
                fontSize: 30,
                color: Colors.lightBlueAccent,
              ),
            ),
            TextFormField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (text){
                newString = text;
              },
            ),
            ElevatedButton(
              onPressed: () {
                addTaskCallBack(newString);
                Navigator.of(context).pop();
              },
              child: const Text(
                "Add",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
