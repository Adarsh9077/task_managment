import 'package:flutter/material.dart';
import 'package:task_management/components/upper_header.dart';
import 'package:task_management/screens/menuPage.dart';
import 'package:task_management/widgets/constant.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool isSwitch = true;
  bool isSound = true;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: kWhite,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              upperHeader("Settings", context, false, MenuPage()),
              SizedBox(height: height * 0.035),
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  gradient: LinearGradient(
                    colors: [Color.fromARGB(255, 208, 240, 1)],
                  ),
                ),
                child: Placeholder(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
