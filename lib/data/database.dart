import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase{
  List toDoList = [];
  final _myBox = Hive.box('myBox');
  void createInitialData(){
    toDoList = [
      ["Make Hw",false],
      ["Do HW",true],
    ];
  }

  void loadData(){
    toDoList = _myBox.get("TODOLIST");
  }

  void updateDatabase(){
    _myBox.put("TODOLIST",toDoList);
  }
}