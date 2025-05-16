import 'package:flutter/material.dart';
import 'package:task_management/components/upper_header.dart';
import 'package:task_management/screens/menuPage.dart';
import 'package:task_management/widgets/constant.dart';
import 'package:task_management/screens/privacySecurityPage.dart';

class HelpPage extends StatelessWidget {
  const HelpPage({super.key});

  @override
  Widget build(BuildContext context) {
    // var height = MediaQuery.of(context).size.height;
    return Container(
      color: kWhite,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: kWhite,
          body: Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                upperHeader("Help", context, false, MenuPage()),
                customOption(
                  "Report a problem",
                  Icons.report_gmailerrorred,
                  () {},
                ),
                customOption(
                  "Account Status",
                  Icons.account_box_outlined,
                  () {},
                ),
                customOption("Privacy & Security help", Icons.security, () {}),
                customOption(
                  "Submit Request",
                  Icons.settings_applications_outlined,
                  () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}