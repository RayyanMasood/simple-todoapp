import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class TodoTile extends StatelessWidget {
    final String taskName;
    final bool taskCompleted;
    final Function(bool?)? onChanged;

  TodoTile({
    super.key,
    required this.taskName, 
    required this.taskCompleted,
    required this.onChanged
  });
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right:20.0, left:20.0, top:20.0),
      child: Slidable(
        endActionPane: ActionPane(
          motion: StretchMotion(),
          children: [
            SlidableAction(onPressed:(context) {},
            icon: Icons.delete,
            backgroundColor: Colors.red,
            borderRadius: BorderRadius.only(topRight: Radius.circular(15), bottomRight: Radius.circular(15)),),
          ],
        ),
        child: Container(
          padding: EdgeInsets.all(18),
          // color: Colors.amber[400],
          decoration: BoxDecoration(
              color: Colors.amber[100],
              borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            children: [
              // add checkbox to the left
              Checkbox(
                value: taskCompleted, 
                onChanged:onChanged,
                activeColor: Colors.black,
              ),
        
              // Task name
              Text(
                taskName,
                style: TextStyle(
                  decoration: taskCompleted ? TextDecoration.lineThrough : TextDecoration.none,
                  fontSize: 20),
              ),
            ],
          ),
        ),
      ),

    );
  }
}
