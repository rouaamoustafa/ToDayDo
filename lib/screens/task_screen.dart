import 'package:flutter/material.dart';
import 'package:todaydo/models/Task_data.dart';
import 'package:todaydo/models/task.dart';
import 'package:todaydo/screens/add_task_screen.dart';
import 'package:todaydo/widgets/tasks_list.dart';
import 'package:provider/provider.dart';

class TasksScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(//116D6E
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: (){
           showModalBottomSheet(
             isScrollControlled: true,
             context: context,
             builder: (context)=> SingleChildScrollView(
               child: Container(
                 padding: EdgeInsets.only(
                   bottom: MediaQuery.of(context).viewInsets.bottom
                 ),
                 child: AddTaskScreen((newTaskTitle){
                   // setState(() {
                   //   tasks.add(Task(name: newTaskTitle));
                   //   Navigator.pop(context);
                   // });

               }),
               ),
             ),);

        },
        backgroundColor: Colors.indigo[400],
        child: Icon(Icons.add),
      ),
      backgroundColor: Color(0xff116D6E),
      body: Container(
        padding: EdgeInsets.only(
          top:60,
          left:20,
          right:20,
          bottom: 80,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  Icons.playlist_add_check,
                  size: 40,
                  color: Colors.white),
                SizedBox(width: 20),
                Text(
                    'ToDayDo',
                     style: TextStyle(
                       color: Colors.white,
                       fontSize: 40,
                       fontWeight: FontWeight.bold,
                     ),
                ),
              ],
            ),
            Text(
              '${Provider.of<TaskData>(context).tasks.length} Tasks',
              style:TextStyle(
                color: Colors.white,
                fontSize: 18,
              )
            ),
            SizedBox(height: 20),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  )
                ),
                child:
                  TasksList(),
              //   AddTaskScreen((newTaskTitle){
              //     setState(() {
              //       tasks.add(Task(name: newTaskTitle));
              //     });
              //
              // }),
              ),
            )
          ]
        ),
      )
    );
  }
}


