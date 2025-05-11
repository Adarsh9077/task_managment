import 'package:flutter/material.dart';
import 'package:task_management/components/customText.dart';
import 'package:task_management/components/upper_header.dart';
import 'package:task_management/screens/changePassword.dart';
import 'package:task_management/screens/settings.dart';
import 'package:task_management/widgets/constant.dart';

class PrivacySecurity extends StatefulWidget {
  const PrivacySecurity({super.key});

  @override
  State<PrivacySecurity> createState() => _PrivacySecurityState();
}

class _PrivacySecurityState extends State<PrivacySecurity> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      // appBar: ,
      body: SafeArea(
        child: Scaffold(
          body: Padding(
            padding: EdgeInsets.all(22),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                upperHeader(
                  "Privacy & Security",
                  context,
                  false,
                  SettingsPage(),
                ),
                SizedBox(height: height * 0.03),
                customText("Login & Security", 20),
                SizedBox(height: height * 0.0001),
                CustomOption("Password", Icons.lock, () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ChangePassword()),
                  );
                }),
                CustomOption("My Account", Icons.account_circle, () {}),
                CustomOption("My Data", Icons.save_alt, () {}),
                // CustomOption("Password", Icons.lock, () {}),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget CustomOption(String txt, IconData icon, onTap) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0),
      child: GestureDetector(
        onTap: onTap,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Icon(icon, size: 30, color: kLightGrey),
            SizedBox(width: 15),
            Expanded(
              child: Text(
                txt,
                style: TextStyle(
                  color: kLightGrey,
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Icon(Icons.arrow_forward_ios_rounded, color: kLightGrey),
          ],
        ),
      ),
    );
  }
}

// 38:30
