import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uk_app/widget/back_button_widget.dart';
import 'package:uk_app/widget/button_widget.dart';
import 'package:uk_app/widget/custom_text_field.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({Key? key}) : super(key: key);

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
                text: 'Sign In',
              ),
            ),
            const SizedBox(height: 150),
            Padding(
              padding: const EdgeInsets.only(left: 32), // Add left padding here
              child: Container(
                width: 320,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    const SizedBox(width: 10),
                    Image.asset(
                      'assets/images/Google.png',
                      width: 37,
                      height: 37,
                    ),
                    const SizedBox(width: 10),
                    Text(
                      'Sign in with Google',
                      style: GoogleFonts.inter(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      width: 80,
                    ),
                    InkWell(
                      onTap: () {},
                      child: const Icon(Icons.arrow_forward_outlined),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 33),
              child: Text(
                'Email Address',
                style: GoogleFonts.inter(
                  textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 33),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 8),
                  const CustomTextField(
                      hintText: 'Email Address',
                      inputType: TextInputType.emailAddress,
                      prefixIcon: Icons.email_outlined),
                  const SizedBox(height: 8),
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
                      inputType: TextInputType.visiblePassword,
                      prefixIcon: Icons.lock_outline),
                  const SizedBox(height: 200),
                  const ButtonWidget(
                    text: 'Log In',
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
