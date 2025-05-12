import 'package:flutter/material.dart';

class ShowAndHide extends StatefulWidget {
  const ShowAndHide({super.key});

  State<ShowAndHide> createState() => _ShowAndHideState();
}

class _ShowAndHideState extends State<ShowAndHide> {
  bool passwordVisible = false;

  @override
  void initState() {
    super.initState();
    passwordVisible = true;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('Show or Hide Password in TextField')),
      body: Container(
        child: Column(
          children: [
            TestInput("Password"),
            TestInput("Passwords")
          ],
        ),
      ),
    );
  }

  Widget TestInput( String hintText) {
     bool passwordVisible = true;
    return Container(
      padding: EdgeInsets.all(20.0),
      child: TextField(
        obscureText: passwordVisible,
        decoration: InputDecoration(
          border: UnderlineInputBorder(),
          hintText: hintText,
          labelText: "Password",
          helperText: "Password must contain special character",
          helperStyle: TextStyle(color: Colors.green),
          suffixIcon: IconButton(
            icon: Icon(
              passwordVisible ? Icons.visibility : Icons.visibility_off,
            ),
            onPressed: () {
              setState(() {
                this.passwordVisible = !this.passwordVisible;
              });
            },
          ),
          alignLabelWithHint: false,
          filled: true,
        ),
        keyboardType: TextInputType.visiblePassword,
        textInputAction: TextInputAction.done,
      ),
    );
  }
}
