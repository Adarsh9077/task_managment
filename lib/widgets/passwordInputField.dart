import 'package:flutter/material.dart';

class PasswordInputField extends StatefulWidget {
  final String hintText;
  final TextEditingController controller;

  const PasswordInputField({
    Key? key,
    required this.hintText,
    required this.controller,
  }) : super(key: key);

  @override
  State<PasswordInputField> createState() => _PasswordInputFieldState();
}

class _PasswordInputFieldState extends State<PasswordInputField> {
  bool _obscureText = true;

  void _toggleVisibility() {
    setState(() => _obscureText = !_obscureText);
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      obscureText: _obscureText,
      obscuringCharacter: '*',
      decoration: InputDecoration(
        hintText: widget.hintText,
        suffixIcon: IconButton(
          onPressed: _toggleVisibility,
          icon: Icon(_obscureText ? Icons.visibility_off : Icons.visibility),
        ),
      ),
    );
  }
}
