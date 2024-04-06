import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class ToDoTile extends StatelessWidget {

  final String taskn;final bool taskc;
  Function(bool?)?onChanged;
  Function(BuildContext)? deleteFunction;

  ToDoTile({
    super.key,
    required this.taskn,
    required this.taskc,
    required this.onChanged,
    required this.deleteFunction,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Slidable(
        endActionPane: ActionPane(
          motion: StretchMotion(),
          children: [
            SlidableAction(onPressed: deleteFunction,icon: Icons.delete,backgroundColor: Colors.red,borderRadius: BorderRadius.circular(12),)
          ],
        ),
        child: Container(
          padding: EdgeInsets.all(20),
          child: Row(
            children: [
              Checkbox(
                value: taskc, 
                onChanged: onChanged,
                activeColor: Colors.black,
        
                ),
              Text(
                taskn,
                style : TextStyle(decoration: taskc ? TextDecoration.lineThrough:TextDecoration.none),
                ),
            ],
          ),
          decoration: BoxDecoration(
            color: Colors.lightGreen,
            borderRadius: BorderRadius.circular(5),
        
            ),
          
        ),
      ),
    );
  }
}