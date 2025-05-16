import 'package:flutter/material.dart';
import 'package:task_management/components/upper_header.dart';
import 'package:task_management/screens/menuPage.dart';
import 'package:task_management/widgets/constant.dart';

class ContactUsPage extends StatefulWidget {
  const ContactUsPage({super.key});

  @override
  State<ContactUsPage> createState() => _ContactUsPageState();
}

class _ContactUsPageState extends State<ContactUsPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: kWhite,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: height * 0.03),
              upperHeader("Contact", context, true, MenuPage()),
              SizedBox(height: height * 0.015),
              Container(
                padding: EdgeInsets.all(0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  gradient: LinearGradient(
                    colors: [kRed, kBlueLight],
                    begin: Alignment.bottomRight,
                    end: Alignment.topLeft,
                  ),
                ),
                // height: height * 0.3,
                width: double.infinity,
                child: Image.asset("assets/image/contact-us-img.png"),
              ),
              SizedBox(height: height * 0.02),
              Text(
                "We are here to help you",
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: height * 0.015),
              Column(
                children: [
                  formTextFields("Name", nameController, TextInputType.name),
                  SizedBox(height: height * 0.015),
                  formTextFields(
                    "Email",
                    emailController,
                    TextInputType.emailAddress,
                  ),
                  SizedBox(height: height * 0.015),
                  formTextFields(
                    "Message",
                    messageController,
                    TextInputType.text,
                  ),
                  SizedBox(height: height * 0.015),
                  formTextFields(
                    "Number",
                    messageController,
                    TextInputType.number,
                  ),
                  SizedBox(height: height * 0.015),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget formTextFields(String hintTxt, inputController, inputKeyboardType) {
  return SizedBox(
    height: 50,
    child: TextField(
      keyboardType: inputKeyboardType,
      controller: inputController,
      decoration: InputDecoration(
        hintText: hintTxt,
        hintStyle: TextStyle(
          fontSize: 18,
          color: kLightGrey,
          fontWeight: FontWeight.w500,
        ),
        contentPadding: EdgeInsets.only(left: 18),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    ),
  );
}
