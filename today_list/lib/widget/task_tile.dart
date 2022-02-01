// ignore_for_file: empty_constructor_bodies

import 'package:flutter/material.dart';
class TaskTile extends StatelessWidget {
 
  TaskTile({required this.taskTile,required this.isChecked,required this.checkboxCallback,required this.longpressCallback});
final bool isChecked;
final String taskTile;
final Function(bool?) checkboxCallback;
final Function()? longpressCallback;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress:longpressCallback ,
      title: Text(taskTile,
      style:  TextStyle(decoration:isChecked? TextDecoration.lineThrough:null),),
      trailing: Checkbox(
      activeColor: Colors.lightBlueAccent,
      value: isChecked, 
     onChanged:  checkboxCallback,), 
        

        
    );
  }
}


