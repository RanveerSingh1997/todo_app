import 'package:flutter/material.dart';
import 'package:hello_world/models/task_data.dart';
import 'package:provider/provider.dart';


class AddTaskScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    String newTaskTitle;
    return Container(
      color:Color(0xff757575),
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              Text(
                'Add Task',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 24.0,
                    color: Colors.lightBlueAccent),
              ),
              TextField(
                autofocus: true,
                onChanged:(val){
                  newTaskTitle=val;
                },
              ),
              FlatButton(
                child:Text('Add'),
                color: Colors.lightBlueAccent,
                onPressed:(){
                   Provider.of<TaskData>(context).addTask(newTaskTitle);
                   Navigator.pop(context);
                },
              )
            ],
          ),
        ),
        decoration: BoxDecoration(
          color:Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
        ),
      ),
    );
  }
}
