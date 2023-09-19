import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final IconData prefixIcon;
  final TextInputType inputType;
  final bool obsecureText;

  const CustomTextField({
    super.key,
    required this.hintText,
    required this.prefixIcon,
    required this.inputType,
    this.obsecureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 330,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: TextField(
        keyboardType: inputType,
        obscureText: obsecureText,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hintText,
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          prefixIcon: Icon(
            prefixIcon,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
