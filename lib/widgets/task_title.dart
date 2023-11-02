import 'package:flutter/material.dart';

class TaskTitle extends StatelessWidget {

  final bool value1 ;
  final String taskTitle;
  final void Function (bool?) checkboxChange;
  final void Function () listTileDelete;

  TaskTitle({
    required this.value1 ,
    required this.taskTitle ,
    required this.checkboxChange,
    required this.listTileDelete
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(taskTitle,
        style: TextStyle(decoration:value1 ? TextDecoration.lineThrough : null ),
      ),
      trailing:Checkbox(
        activeColor: Colors.teal[400],
        value: value1,
        onChanged: checkboxChange,
          //(newvalue)
    //=> setState(() => this.value1 = newvalue!),
      ),
      onLongPress: listTileDelete,
    );
  }
}

