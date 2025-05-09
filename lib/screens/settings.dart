import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_management/components/customText.dart';
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
                padding: EdgeInsets.all(6),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  gradient: LinearGradient(
                    colors: [
                      Color.fromARGB(255, 208, 240, 1),
                      Color.fromARGB(255, 253, 170, 53),
                    ],
                  ),
                ),
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.grey[200],
                  ),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey[300],
                        ),
                        padding: EdgeInsets.all(12),
                        child: ColorFiltered(
                          colorFilter: ColorFilter.mode(
                            Color.fromARGB(
                              255,
                              224,
                              224,
                              224,
                            ).withValues(alpha: 0.5),
                            BlendMode.srcATop,
                          ),
                          child: Icon(
                            Icons.workspace_premium_outlined,
                            size: 30,
                            color: kDark,
                          ),
                        ),
                      ),
                      SizedBox(width: height * 0.015),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Tasks",
                                  style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                    color: kDark,
                                  ),
                                ),
                                SizedBox(width: height * 0.008),
                                Icon(Icons.add, size: 22, color: kDark),
                              ],
                            ),
                            SizedBox(height: height * 0.002),
                            Text(
                              "Unlock our Most exclusive feature",
                              style: TextStyle(
                                fontSize: 14,
                                color: kDark,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Icon(Icons.arrow_forward_ios_rounded),
                    ],
                  ),
                ),
              ),
              SizedBox(height: height * 0.035),
              Row(
                children: [
                  if (isSound == true)
                    Icon(Icons.volume_up_outlined, size: 32, color: kDark)
                  else
                    Icon(Icons.volume_off_outlined, size: 32, color: kDark),
                  SizedBox(width: height * 0.015),
                  Expanded(child: customText("Sound", 24)),
                  CupertinoSwitch(
                    value: isSound,
                    onChanged: (bool value) {
                      setState(() {
                        isSound = value;
                      });
                    },
                  ),
                ],
              ),
              SizedBox(height: height * 0.02),
              Row(
                children: [
                  if (isSwitch == true)
                    Icon(Icons.notifications_active_outlined, size: 32)
                  else
                    Icon(Icons.notifications_off_outlined, size: 32),
                  SizedBox(width: height * 0.015),
                  Expanded(child: customText("Notification", 24)),
                  CupertinoSwitch(
                    value: isSwitch,
                    onChanged: (bool value) {
                      setState(() {
                        isSwitch = value;
                      });
                    },
                  ),
                ],
              ),
              SizedBox(height: height * 0.025),
              GestureDetector(
                onTap: () {
                  print("redirect to Privacy and Policy Page ");
                },
                child: Row(
                  children: [
                    Icon(Icons.lock_open_outlined, size: 32),
                    SizedBox(width: height * 0.015),
                    Expanded(child: customText("Privacy & Policy", 24)),
                    Icon(Icons.arrow_forward_ios_rounded),
                  ],
                ),
              ),
              SizedBox(height: height * 0.02),
              GestureDetector(
                onTap: () {
                  print("Redirect to About App");
                },
                child: Row(
                  children: [
                    Icon(Icons.info_outline, size: 32),
                    SizedBox(width: height * 0.015),
                    Expanded(child: customText("About App", 24)),
                    Icon(Icons.arrow_forward_ios_rounded),
                  ],
                ),
              ),
              SizedBox(height: height * 0.02),
              GestureDetector(
                onTap: () {
                  print("Redirect to Help And Support Page");
                },
                child: Row(
                  children: [
                    Icon(Icons.help_outline, size: 32),
                    SizedBox(width: height * 0.015),
                    Expanded(child: customText("Help & Support", 24)),
                    Icon(Icons.arrow_forward_ios_rounded),
                  ],
                ),
              ),
              Divider(
                height: 60,
                color: kBlueLight,
                thickness: 2,
                endIndent: 33,
                indent: 22,
              ),
              // Container(width: double.infinity,height: height * 0.025,color: kRed,),
              GestureDetector(
                onTap: () {
                  print("sign out too ho-ga ");
                },
                child: customText("Sign Out", 20),
              ),
              SizedBox(height: height * 0.001),
              // Text("version:1.2.354".toUpperCase(),)
              customText("version:1.2.354".toUpperCase(), 20),
            ],
          ),
        ),
      ),
    );
  }
}
