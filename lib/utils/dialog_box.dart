import 'package:flutter/material.dart';
import 'package:todoapp/utils/my_button.dart';


class DialogBox extends StatelessWidget {
  final controller;
  final VoidCallback onSave;
  final VoidCallback onCancel;
  // VoidCallback, which is a function type that takes no arguments and returns no data. These could be used to handle user interactions with the dialog box.


  DialogBox({
    super.key, 
    required this.controller,
    required this.onCancel,
    required this.onSave,
    });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: const EdgeInsets.only(bottom: 0, top: 15, right: 15, left: 15),
      // insetPadding: EdgeInsets.all(35),
      // actionsOverflowButtonSpacing:20,
      shape: ContinuousRectangleBorder(borderRadius: BorderRadius.circular(48),),
      // alignment: Alignment(0, 0),
      backgroundColor: Colors.amber[200],
      content: SizedBox(
        height: 150,
        width: 2000,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // user input
            TextField(
              controller: controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                filled: true,
                fillColor: Colors.amber[100],
                hintText: "Add a new task",
                hintStyle: const TextStyle(color: Colors.grey)
              ),
            ),

            // Row(
            //   children: [
            //     const SizedBox(height: 16,)
            //   ],
            // ),
            // buttons -- save and cancel
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // Save button
                MyButton(text: "Save", onPressed: onSave,),
                // Cancel button
                MyButton(text: "Cancel", onPressed: onCancel,),
              ],
            )
          ],
        ),
      ),
    );
  }
}