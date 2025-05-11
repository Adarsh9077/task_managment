import 'package:flutter/material.dart';
import 'package:task_management/components/upper_header.dart';
import 'package:task_management/screens/settings.dart';
import 'package:task_management/widgets/constant.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  @override
  Widget build(BuildContext content) {
    var height = MediaQuery.of(context).size.height;
    TextEditingController currPassword = TextEditingController();
    return Scaffold(
      backgroundColor: kWhite,
      body: SafeArea(
        child: Scaffold(
          // appBar: ,
          body: Padding(
            padding: EdgeInsets.only(top: 20, left: 25, right: 25),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  upperHeader(
                    "Change Password",
                    context,
                    false,
                    SettingsPage(),
                  ),
                  SizedBox(height: height * 0.015),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      children: [
                        Text(
                          "Your Password must be at least 6 characters "
                          "and should include a combination of numbers, "
                          "letters and special characters ",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(height: height * 0.025),
                        // TextField(decoration: InputDecoration(enabledBorder: ),),
                        CustomInputTextField(
                          "Current Password",
                          currPassword,
                          () {},
                        ),
                        SizedBox(height: height * 0.025),
                        ElevatedButton(
                          onPressed: () {
                            print(currPassword.text.toString());
                          },
                          child: Text("Change Password"),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget CustomInputTextField(String hintText, customController, onTap) {
    // print(customController);
    var showInput = false;
    showTextInputFuc() {
      showInput =!showInput;

      setState(() {
        print(showInput);
      });
    }

    return TextField(
      obscureText: showInput,
      obscuringCharacter: "*",
      controller: customController,
      onTap: onTap,
      decoration: InputDecoration(
        hintText: hintText,
        suffixIcon: IconButton(
          onPressed: () {
            showTextInputFuc();
          },
          icon: Icon(Icons.remove_red_eye_outlined),
        ),
      ),
    );
  }
}
