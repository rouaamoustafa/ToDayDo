import 'package:flutter/material.dart';
import 'package:todaydo/widgets/task_title.dart';
import 'package:todaydo/models/Task_data.dart';
import 'package:provider/provider.dart';


class TasksList extends StatelessWidget {

  //final List<Task> tasks;

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context , taskData , child ){
        return
          ListView.builder(
            itemCount: Provider.of<TaskData>(context).tasks.length,
            itemBuilder: (context , index){
              return TaskTitle(
                  value1: taskData.tasks[index].isDone,
                  taskTitle: taskData.tasks[index].name,

                  checkboxChange: ( newvalue) {
                  taskData.updateTask(taskData.tasks[index]);
                  },
                listTileDelete: (){
                    taskData.deleteTask(taskData.tasks[index]);
                },


              );
            },
          );
      },

    );

  }
}

