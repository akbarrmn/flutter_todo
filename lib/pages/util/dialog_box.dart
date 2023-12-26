import 'package:flutter/material.dart';
import 'package:flutter_todo/pages/util/button_ui.dart';

// ignore: must_be_immutable
class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;


  DialogBox({super.key, required this.controller, required this.onSave, required this.onCancel});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        title: const Text('Add New Task'),
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
        backgroundColor: Colors.blue,
        content: Container(
            height: 120,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextField(
                  controller: controller,
                  decoration: const InputDecoration(
                      hintText: 'Enter Task Title',
                      border: OutlineInputBorder()),
                  style: const TextStyle(color: Colors.white),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ButtonUi(text: "Save", onPressed: onSave),
                    ButtonUi(text: "Cancel", onPressed: onCancel),
                  ],
                )
              ],
            )));
  }
}
