import 'package:flutter/material.dart';
import 'package:task_management/widgets/constant.dart';

import 'customText.dart';

Widget upperHeader(
  String text,
  BuildContext context,
  bool isIcon,
  Widget page,
) {
  var height = MediaQuery.of(context).size.height;
  return Padding(
    padding: EdgeInsets.only(top: 20),
    child: Row(
      children: [
        GestureDetector(
          onTap: () {
            print(height);
            Navigator.pop(
              context,
              MaterialPageRoute(builder: (context) => page),
            );
          },
          child: Icon(Icons.arrow_back_ios_rounded, color: kDark, size: 30),
        ),
        SizedBox(width: height * 0.02),
        customText(text, 28),
        Expanded(child: Container()),
        isIcon ? Icon(Icons.search) : Container(),
      ],
    ),
  );
}
