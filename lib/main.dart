import 'package:flutter/material.dart';
import 'package:todo1/util/dialog_box.dart';
import 'package:todo1/util/todo_tile.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
      theme: ThemeData(primarySwatch: Colors.yellow),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final _controller = TextEditingController();
  List<List<Object>> toDoList = [
    ["Make HW", false],
    ["Do HW", true],
    ["Study", true],
  ];
  void checkBoxChanged( bool? value, int index){
    setState(() {
      toDoList[index][1] = !(toDoList[index][1] as bool);
    });
  }
  void savenewTask(){
    setState(() {
      toDoList.add([_controller.text,false]);
      _controller.clear();
    });
    Navigator.of(context).pop();
  }

  void createNewTask(){
    showDialog(context: context, builder: (context){
      return DialogBox(controller: _controller,onSave: savenewTask,onCancel: () => Navigator.of(context).pop(),);
    });
  }

  void deleteTask(int index){
      setState(() {
        toDoList.removeAt(index);
      });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange[200],
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('To Do App'),
        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: createNewTask ,
        child: Icon(Icons.add),
        ),
      body: ListView.builder(
        itemCount: toDoList.length ,
        itemBuilder: (context, index){
          return ToDoTile(taskn: toDoList[index][0] as String,
            taskc: toDoList[index][1] as bool, onChanged: (value) => checkBoxChanged(value,index),
            deleteFunction: (context) => deleteTask(index),
            );
        },
      ),
      );
  }
}
