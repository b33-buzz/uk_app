import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uk_app/widget/back_button_widget.dart';
import 'package:uk_app/widget/button_widget.dart';
import 'package:uk_app/widget/custom_text_field.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 81),
            const Padding(
              padding: EdgeInsets.only(left: 32),
              child: BackButtonWidget(
                text: 'Sign Up',
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 150, left: 33),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Username',
                    style: GoogleFonts.inter(
                      textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  const CustomTextField(
                    hintText: 'Username',
                    prefixIcon: Icons.person_outlined,
                    inputType: TextInputType.text,
                  ),
                  const SizedBox(height: 14),
                  Text(
                    'Email Address',
                    style: GoogleFonts.inter(
                      textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  const CustomTextField(
                    hintText: 'Email Address',
                    inputType: TextInputType.emailAddress,
                    prefixIcon: Icons.email_outlined,
                  ),
                  const SizedBox(height: 14),
                  Text(
                    'Password',
                    style: GoogleFonts.inter(
                      textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  const CustomTextField(
                    hintText: 'Password',
                    obsecureText: true,
                    inputType: TextInputType.visiblePassword,
                    prefixIcon: Icons.lock_outlined,
                  ),
                  const SizedBox(height: 200),
                  const ButtonWidget(
                    text: 'Continue',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
