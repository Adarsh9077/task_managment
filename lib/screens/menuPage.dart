import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:task_management/screens/home.dart';
import 'package:task_management/screens/settings.dart';
import 'package:task_management/widgets/constant.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  // const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  // const({super.key});
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: kWhite,
      body: Padding(
        padding: EdgeInsets.only(left: 10, right: 10, top: 55),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Expanded(child: Container()),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) => HomePage(),
                        ),
                      );
                    },
                    child: Icon(Icons.close_rounded, color: kDark, size: 30),
                  ),
                  SizedBox(width: height * 0.005),
                ],
              ),
            ),
            SizedBox(height: height * .13),
            Text("About Us", style: TextStyle(fontSize: 30, color: kDark)),
            SizedBox(height: height * .035),
            Text("Contact Us", style: TextStyle(fontSize: 30, color: kDark)),
            SizedBox(height: height * .035),
            Text("Help", style: TextStyle(fontSize: 30, color: kDark)),
            SizedBox(height: height * .035),
            // Text("Settings", style: TextStyle(fontSize: 30, color: kDark)),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SettingsPage()),
                );
              },
              child: Text(
                "Settings",
                style: TextStyle(fontSize: 30, color: kDark),
              ),
            ),
            SizedBox(height: height * .035),
            GestureDetector(
              onTap: () {
                SystemNavigator.pop();
              },
              child: Text(
                "Logout",
                style: TextStyle(fontSize: 30, color: kDark),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// 27:00 video 3
