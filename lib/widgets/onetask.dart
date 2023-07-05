import 'dart:ffi';

import 'package:flutter/material.dart';

class OneTask extends StatelessWidget {
  late final bool? isChecked;
  late final String? title;
  late final void Function(bool?)? checkBoxCallBack;
  late final Function()? longPressCallBack;

  OneTask(
      {this.isChecked,
      this.title,
      this.checkBoxCallBack,
      this.longPressCallBack});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallBack,
      title: Text(
        '$title',
        style: TextStyle(
          decoration: isChecked! ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: TaskCheckBox(
          checkBoxState: isChecked, toggleCheckBoxState: checkBoxCallBack!),
    );
  }
}

class TaskCheckBox extends StatelessWidget {
  final bool? checkBoxState;
  final void Function(bool?) toggleCheckBoxState;

  TaskCheckBox(
      {required this.checkBoxState, required this.toggleCheckBoxState});

  @override
  Widget build(BuildContext context) {
    return Checkbox(value: checkBoxState, onChanged: toggleCheckBoxState);
  }
}


// (bool? checkBoxState) {
//           setState(
//             () {
//               isChecked = checkBoxState;
//             },
//           );
//         },