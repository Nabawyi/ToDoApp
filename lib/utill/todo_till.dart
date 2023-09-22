// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class ToDolist extends StatelessWidget {
  ToDolist({
    super.key,
    required this.onChanged,
    required this.taskcomelate,
    required this.taskname,
    required this.deleataction,
  });

  final String taskname;
  final bool taskcomelate;
  Function(bool?)? onChanged;
  Function(BuildContext)? deleataction;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 24, left: 24, top: 12),
      child: Slidable(
        endActionPane: ActionPane(
          motion: const StretchMotion(),
          children: [
            SlidableAction(
              onPressed: deleataction,
              icon: Icons.delete,
              backgroundColor: Colors.red,
              borderRadius: BorderRadius.circular(12),
            ),
          ],
        ),
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
              color: Colors.yellow, borderRadius: BorderRadius.circular(12)),
          child: Row(
            children: [
              Checkbox(
                value: taskcomelate,
                onChanged: onChanged,
                activeColor: Colors.green,
              ),
              Text(taskname,
                  style: TextStyle(
                      decoration: taskcomelate
                          ? TextDecoration.lineThrough
                          : TextDecoration.none)),
            ],
          ),
        ),
      ),
    );
  }
}
