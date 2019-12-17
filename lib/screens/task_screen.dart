import 'package:flutter/material.dart';
import 'package:hello_world/models/task_data.dart';
import 'package:hello_world/screens/add_task_screen.dart';
import 'package:hello_world/widgets/task_list.dart';
import 'package:provider/provider.dart';

class TaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
                top: 60.0, left: 30.0, right: 30.0, bottom: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                  radius: 30.0,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.list,
                    size: 30.0,
                    color: Colors.blue,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'Todo App',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                      color: Colors.white),
                ),
                Text(
                  '${Provider.of<TaskData>(context).taskCount} Task',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16.0,
                      color: Colors.white),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
                width: MediaQuery
                    .of(context)
                    .size
                    .width,
                height: MediaQuery
                    .of(context)
                    .size
                    .height,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30.0),
                        topRight: Radius.circular(30.0)),
                    color: Colors.white),
                child: Padding(
                  padding: EdgeInsets.only(left: 20.0, right: 20.0),
                  child:TaskList(),
                )
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          _startModelBottomSheet(context);
        },
      ),
    );
  }

  void _startModelBottomSheet(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (_) {
          return GestureDetector(
            onTap: () {},
            child: AddTaskScreen(),
            behavior: HitTestBehavior.opaque,
          );
        });
  }
}
