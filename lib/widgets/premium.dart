import 'package:flutter/material.dart';
import 'package:task_management/widgets/constant.dart';

class GoPremium extends StatefulWidget {
  const GoPremium({super.key});

  @override
  State<GoPremium> createState() => _GoPremiumState();
}

class _GoPremiumState extends State<GoPremium> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.all(3),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            gradient: LinearGradient(
              colors: [Color(0xffFDC830), Color(0xffF37335)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Container(
            // height: 100,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Colors.grey[200],
            ),
            padding: EdgeInsets.all(8),
            child: Row(
              children: [
                Container(
                  width: height * 0.05,
                  height: height * 0.05,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: ColorFiltered(
                    colorFilter: ColorFilter.mode(
                      Color.fromARGB(255, 255, 254, 254).withValues(alpha: 0.6),
                      BlendMode.srcATop,
                    ),
                    child: Icon(
                      Icons.workspace_premium_outlined,
                      size: 30,
                      color: MyThemeColor.textColor,
                    ),
                  ),
                ),
                SizedBox(width: height * 0.01),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 5,
                  children: [
                    Text(
                      "Go Premium",
                      style: TextStyle(
                        fontSize: 20,
                        color: kDark,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      "Get access to all feature\nand unlimited downloads",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey[800],
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                Expanded(child: Container()),
                IconButton(
                  onPressed: () {
                    print("Go Premium Page...");
                  },
                  icon: Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Colors.grey,
                    size: 30,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
