import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_launcher_icons/xml_templates.dart';
import 'package:task_management/widgets/constant.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: MyThemeColor.backgroundColor,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: height * 0.02,
            vertical: height * 0.015,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20),
                Text(
                  "First Name",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                    color: Colors.grey[700],
                  ),
                ),
                SizedBox(height: height * 0.008),
                SizedBox(
                  height: height * 0.045,
                  child: TextField(
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 10),
                      hintText: "Adarsh",
                      hintStyle: TextStyle(
                        color: kLightGrey,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: MyThemeColor.textColor),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(color: MyThemeColor.textColor),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: MyThemeColor.textColor),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: height * 0.015),
                Text(
                  "Last Name",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                    color: Colors.grey[700],
                  ),
                ),
                SizedBox(height: height * 0.008),
                SizedBox(
                  height: height * .045,
                  child: TextField(
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      hintText: "Bhardwaj",
                      hintStyle: TextStyle(
                        fontSize: 16,
                        color: kLightGrey,
                        fontWeight: FontWeight.w800,
                      ),
                      contentPadding: EdgeInsets.all(10),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: height * .015),
                Text(
                  "Username",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                    color: Colors.grey[700],
                  ),
                ),
                SizedBox(height: height * 0.008),
                Row(
                  children: [
                    SizedBox(
                      width: height * 0.20,
                      height: height * 0.045,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Adarsh873",
                          hintStyle: TextStyle(
                            fontSize: 16,
                            color: kLightGrey,
                            fontWeight: FontWeight.w700,
                          ),
                          contentPadding: EdgeInsets.only(left: 10),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    Expanded(child: Container()),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Change Username",
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                    Icon(Icons.edit, size: 16, color: Colors.blue),
                  ],
                ),

                SizedBox(height: height * 0.015),
                Text(
                  "Phone Number",
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 16,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                SizedBox(height: height * 0.008),
                Row(
                  children: [
                    SizedBox(
                      width: height * 0.20,
                      height: height * 0.045,
                      child: TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: "+91 99 999 99 999",
                          hintStyle: TextStyle(
                            color: kLightGrey,
                            fontSize: 14,
                            fontWeight: FontWeight.w800,
                          ),
                          contentPadding: EdgeInsets.only(left: 10),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                    ),
                    Expanded(child: Container()),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Change Number",
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                    Icon(Icons.edit, color: Colors.blue, size: 16),
                  ],
                ),
                SizedBox(height: height * 0.015),
                Text(
                  "Email Address",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey[700],
                    fontWeight: FontWeight.w800,
                  ),
                ),
                SizedBox(height: height * .008),
                Row(
                  children: [
                    SizedBox(
                      width: height * .25,
                      height: height * 0.045,
                      child: TextField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(left: 10),
                          hintText: "adarshqwerty123@gmail.com",
                          hintStyle: TextStyle(
                            color: kLightGrey,
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                    ),
                    Expanded(child: Container()),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Change Email Id",
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Colors.blue,
                      size: 16,
                    ),
                  ],
                ),
                SizedBox(height: height * 0.015),
                Divider(height: height * 0.02, color: Colors.grey[300]),
                SizedBox(height: height * 0.015),
                Row(
                  children: [
                    Text(
                      "Add Account",
                      style: TextStyle(
                        color: Colors.grey[800],
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Expanded(child: Container()),
                    Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Colors.blue,
                      size: 20,
                    ),
                  ],
                ),
                SizedBox(height: height * 0.008),
                Row(
                  children: [
                    Text(
                      "Switch Account",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey[800],
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Expanded(child: Container()),
                    Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Colors.blue,
                      size: 20,
                    ),
                  ],
                ),
                SizedBox(height: height * 0.008),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    "Log Out",
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}//27:45 part 04