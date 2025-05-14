import 'package:flutter/material.dart';
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
              SizedBox(height: height * 0.015),
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
                      "change Username",
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
