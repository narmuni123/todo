import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {

 final bool isChecked;
 final String title;
 final Function(bool?) checkBoxCallBack;

 TaskTile({required this.isChecked, required this.title, required this.checkBoxCallBack});


  @override
  Widget build(BuildContext context) {
    return  ListTile(
      title:  Text(
        title,
        style: TextStyle(
          decoration: (isChecked == true) ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
          activeColor: Colors.lightBlueAccent,
          value: isChecked,
          onChanged: (newValue){
            checkBoxCallBack(newValue!);
          },
        ),
    );
  }
}
