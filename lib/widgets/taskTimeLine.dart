import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:task_management/widgets/constant.dart';
import 'package:timeline_tile/timeline_tile.dart';

class TaskTimeLine extends StatelessWidget {
  final Map<String, dynamic> detail;

  const TaskTimeLine({super.key, required this.detail});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 18),
      child: Row(children: [_buildTimeLine(detail['titleColor'])],),
    );
  }

  Widget _buildTimeLine(Color color) {
    return SizedBox(
      width: 20,
      height: 115,
      child: TimelineTile(
        alignment: TimelineAlign.manual,
        lineXY: 0,
        indicatorStyle: IndicatorStyle(
          indicatorXY: 0,
          width: 20,
          indicator: Container(
            decoration: BoxDecoration(
              color: kWhite,
              border: Border.all(color: color, width: 2),
            ),
          ),
        ),
        afterLineStyle: LineStyle(thickness: 2, color: color),
        isFirst: true,
      ),
    );
  }
}
// 34:00 part 5