import 'package:flutter/material.dart';
import 'package:task_management/widgets/constant.dart';
import 'package:timeline_tile/timeline_tile.dart';

class TaskTimeLine extends StatelessWidget {
  final Map<String, dynamic> detail;

  const TaskTimeLine({super.key, required this.detail});

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 18,vertical: 0),
      // margin: EdgeInsets.only(top: 20),
      color: kRedLight,
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
      margin: EdgeInsets.only(bottom: 20,top: 20 ),
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
            padding: EdgeInsets.only(left: 20,top: 25),
            child: Text(
              title,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.black54,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20,top: 2),
            child: Text(
              slot,
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
      width: 25,
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
              border: Border.all(color: color, width: 5),
              borderRadius: BorderRadius.circular(22),
            ),
          ),
        ),
        afterLineStyle: LineStyle(thickness: 3, color: color),
        isFirst: true,
      ),
    );
  }
}