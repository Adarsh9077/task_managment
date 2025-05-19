import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:task_management/modals/task_modal.dart';
import 'package:task_management/widgets/constant.dart';
import 'package:task_management/widgets/datePicker.dart';
import 'package:task_management/widgets/taskTimeLine.dart';
import 'package:task_management/widgets/taskTitle.dart';

class DetailPage extends StatelessWidget {
  final Task task;

  const DetailPage({required this.task, super.key});

  @override
  Widget build(BuildContext context) {
    final detailList = task.desc;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          _buildAppbar(context),
          SliverToBoxAdapter(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(28),
                  topRight: Radius.circular(28),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [DatePicker(), TaskTitle()],
              ),
            ),
          ),
          detailList == null
              ? SliverFillRemaining(
                child: Container(
                  color: kWhite,
                  child: Center(
                    child: Text(
                      "N0 Task yet",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              )
              : SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) => TaskTimeLine(detail: detailList[index]),
                  childCount: detailList.length,
                ),
              ),
        ],
      ),
    );
  }

  Widget _buildAppbar(BuildContext context) {
    return SliverAppBar(
      backgroundColor: kDark,
      expandedHeight: 100,
      leading: IconButton(
        onPressed: () => Navigator.pop(context),
        icon: Icon(Icons.arrow_back_ios),
        iconSize: 20,
      ),
      actions: [
        IconButton(onPressed: () {}, icon: Icon(Icons.more_vert), iconSize: 20),
      ],
      flexibleSpace: FlexibleSpaceBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              "${task.title} Task",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 5),
            Text(
              "you have ${task.left} tasks left to do",
              style: TextStyle(
                color: kLightGrey,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
