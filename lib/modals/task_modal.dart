import 'package:flutter/material.dart';
import 'package:task_management/widgets/constant.dart';

class Task {
  IconData? icon;
  String? title;
  List<Map<String, dynamic>>? desc;
  Color? bgColor;
  Color? iconColor;
  Color? btnColor;
  num? left;
  num? done;
  bool isLast;

  Task({
    this.icon,
    this.title,
    this.desc,
    this.bgColor,
    this.iconColor,
    this.btnColor,
    this.left,
    this.done,
    this.isLast = false,
  });

  static List<Task> generateTasks() {
    return [
      // Task(
      //   icon: Icons.person_rounded,
      //   title: "Personal",
      //   bgColor: kBlueLight,
      //   iconColor: kBlueDark,
      //   btnColor: kBlue,
      //   left: 5,
      //   done: 3,
      //   isLast: false,
      // ),
      Task(
        icon: Icons.person_rounded,
        title: "Personal",
        desc: [{}],
        bgColor: kBlueLight,
        iconColor: kBlueDark,
        btnColor: kBlue,
        left: 5,
        done: 3,
        isLast: false,
      ),
      Task(
        icon: Icons.work_rounded,
        title: "Work",
        desc: [
          {
            'time': '9:00 AM',
            'title': 'Create a video',
            'slot': '9:00 AM - 10:00 AM',
            'titleColor': kYellow,
            'bgColor': kYellowLight,
          },
          {
            'time': '10:00 AM',
            'title': 'Watch Dsa, Love Babbar video',
            'slot': '10:00 AM - 11:00 AM',
            'titleColor': kYellow,
            'bgColor': kYellowLight,
          },
          {
            'time': '11:00 AM',
            'title': '',
            'slot': '',
            'titleColor': kYellow,
            'bgColor': kYellowLight,
          },
          {
            'time': '12:00 PM',
            'title': 'Solve a question of BST',
            'slot': '9:00 AM - 10:00 AM',
            'titleColor': kYellow,
            'bgColor': kYellowLight,
          },
        ],
        bgColor: kYellowLight,
        iconColor: kYellowDark,
        btnColor: kYellow,
        left: 5,
        done: 3,
        isLast: false,
      ),
      Task(
        icon: Icons.favorite_rounded,
        title: "Health",
        desc: [{}],
        bgColor: kRedLight,
        iconColor: kRedDark,
        btnColor: kRed,
        left: 5,
        done: 3,
        isLast: false,
      ),

      Task(
        icon: Icons.person_rounded,
        title: "Personal",
        desc: [{}],
        bgColor: kBlueLight,
        iconColor: kBlueDark,
        btnColor: kBlue,
        left: 5,
        done: 3,
        isLast: true,
      ),
    ];
  }
}
