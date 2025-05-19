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
      child: Row(
        children: [
          _buildTimeLine(detail['titleColor']),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  detail['time'],
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                ),
                detail['title'].isNotEmpty
                    ? _buildCard(
                      detail['bgColor'],
                      detail['title'],
                      detail['slot'],
                    )
                    : _buildCard(kWhite, "", ""),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCard(Color bgColor, String title, String slot) {
    return Container(
      width: 250,
      height: 120,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          bottomRight: Radius.circular(10),
          bottomLeft: Radius.circular(10),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(8),
            child: Text(
              title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.grey[700],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: Text(
              title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.grey[700],
              ),
            ),
          ),
        ],
      ),
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
} // 54:00 part 5