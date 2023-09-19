import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uk_app/screens/signin_screen.dart';
import 'package:uk_app/screens/singup_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(bottom: 16.0),
        child: Column(
          children: [
            const SizedBox(height: 169),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 134),
              child: Image.asset(
                'assets/images/Logo.png',
                height: 147,
                width: 110,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 138),
              child: Text(
                'Welcome To',
                style: GoogleFonts.inter(
                  textStyle: const TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 70),
              child: Text(
                'VarCode',
                style: GoogleFonts.inter(
                  textStyle: const TextStyle(
                    fontSize: 48,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignupScreen()));
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    minimumSize: MaterialStateProperty.all<Size>(
                      const Size(150, 50),
                    ),
                  ),
                  child: Text(
                    'Sign Up',
                    style: GoogleFonts.inter(
                      textStyle:
                          const TextStyle(color: Colors.black, fontSize: 15),
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SigninScreen()));
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.black),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    minimumSize: MaterialStateProperty.all<Size>(
                      const Size(150, 50),
                    ),
                  ),
                  child: Text(
                    'Log In',
                    style: GoogleFonts.inter(
                      textStyle:
                          const TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
