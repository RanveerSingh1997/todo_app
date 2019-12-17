import 'package:flutter/material.dart';
class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function checkboxCalled;
  final Function longPressCallback;
  TaskTile({this.isChecked,this.taskTitle,this.checkboxCalled,this.longPressCallback});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        title:Text(taskTitle,style:TextStyle(decoration:isChecked? TextDecoration.lineThrough :null),),
        trailing:Checkbox(
        activeColor:Colors.lightBlueAccent,
        value:isChecked,
        onChanged:checkboxCalled,
        ),
        onLongPress:longPressCallback,
      ),
    );
  }
}