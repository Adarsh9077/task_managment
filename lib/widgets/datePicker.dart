import 'package:flutter/material.dart';
import 'package:task_management/widgets/constant.dart';

class DatePicker extends StatefulWidget {
  const DatePicker({super.key});

  @override
  State<DatePicker> createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  final weekDays = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'];
  final days = ['11', '12', '13', '14', '15', '16', '17'];
  var selectedDay = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      padding: EdgeInsets.symmetric(horizontal: 18),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: ListView.separated(
        itemBuilder:
            (context, index) => GestureDetector(
              onTap: () {
                setState(() {
                  selectedDay = index;
                });
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 17),
                margin: EdgeInsets.symmetric(horizontal: 0.5),
                decoration: BoxDecoration(
                  color:
                      selectedDay == index
                          ? Colors.grey.withValues(alpha: 0.3)
                          : null,
                ),
                child: Column(
                  children: [
                    Text(
                      weekDays[index],
                      style: TextStyle(
                        color: kBlack,
                        fontWeight: FontWeight.w500,
                        fontSize: 18
                      ),
                    ),
                    SizedBox(height: 20,),
                  ],
                ),
              ),
            ),
        separatorBuilder: (_, index) => SizedBox(width: 21),
        itemCount: weekDays.length,
      ),
    );
  }
}

//20:00 part 5
