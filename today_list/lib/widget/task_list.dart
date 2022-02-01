import 'package:flutter/material.dart';
import 'package:today_list/models/task.dart';
import 'task_tile.dart';
import 'package:today_list/models/task.dart';
import 'package:provider/provider.dart';
import 'package:today_list/models/task_data.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context,taskdata,child){
    return ListView.builder(
        itemBuilder: (context, index) {
          final task=taskdata.tasks[index];
          return TaskTile(
              taskTile: task.name,
              isChecked:task.isDone,
              checkboxCallback: (checkboxState) {
              taskdata.updateTask(task);
              },
              longpressCallback: (){
                taskdata.deleteTask(task);
              },
              );
              
        },
        itemCount: taskdata.taskCount,
      );
      },
  
    );
  }
}
