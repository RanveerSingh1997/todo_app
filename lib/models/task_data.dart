import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:hello_world/models/add_task_model.dart';


class TaskData extends ChangeNotifier{
  List<Task> _tasks=[Task(name:'Good')];


  UnmodifiableListView<Task> get tasks{
    return UnmodifiableListView(_tasks);
  }


  int get taskCount{
    return _tasks.length;
  }

  void addTask(String newTaskTitle){
    final task=Task(name: newTaskTitle);

    _tasks.add(task);

    notifyListeners();
  }


  void updateTask(Task task){
    task.toggleDone();
    notifyListeners();
  }

  void deleteData(Task task){
    _tasks.remove(task);
    notifyListeners();
  }

}
