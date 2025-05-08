import 'package:flutter/material.dart';
import 'package:task_management/widgets/constant.dart';

Widget customText(String text, double size) {
  return Text(
    text,
    style: TextStyle(
      fontSize: size,
      color: kBlack,
      fontWeight: FontWeight.bold,
    ),
  );
}
