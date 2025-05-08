import 'package:dotted_border/dotted_border.dart';
import 'package:dotted_border/dotted_border.dart' as type;
import 'package:flutter/material.dart';
import 'package:task_management/modals/task_modal.dart';
import 'package:task_management/widgets/constant.dart';

class Tasks extends StatelessWidget {
  static final taskList = Task.generateTasks();

  const Tasks({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        itemCount: taskList.length,
        itemBuilder:
            (context, index) =>
                taskList[index].isLast
                    ? _buildAddTask()
                    : _buildTask(context, taskList[index]),
      ),
    );
  }

  // }

  Widget _buildAddTask() {
    return DottedBorder(
      borderType: type.BorderType.RRect,
      color: Colors.grey[600]!,
      strokeWidth: 2,
      dashPattern: [20, 10],
      radius: Radius.circular(10),
      child: Center(child: Icon(Icons.add, size: 30, color: Colors.grey[900]!)),
    );
  }

  Widget _buildTask(BuildContext context, Task taskList) {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: taskList.bgColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 20,
        children: [
          Icon(taskList.icon, color: taskList.iconColor, size: 30),
          // SizedBox(height: 0),
          Text(
            taskList.title.toString(),
            style: TextStyle(color: Colors.grey[600], fontSize: 18),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _buildTaskStatus(
                Colors.grey[200]!,
                taskList.iconColor!,
                "${taskList.left} Left",
              ),
              SizedBox(width: 20),
              _buildTaskStatus(
                kWhite,
                taskList.iconColor!,
                "${taskList.done} Done",
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildTaskStatus(Color bgColor, Color txtColor, String txt) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: bgColor,
      ),
      child: Text(
        txt,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: txtColor,
        ),
      ),
    );
  }
}

// 33:00 video 2 --->
