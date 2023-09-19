import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  const ButtonWidget({
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomLeft,
      child: SizedBox(
        width: 330,
        child: TextButton(
          onPressed: () {},
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.black),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            minimumSize: MaterialStateProperty.all<Size>(const Size(350, 50)),
          ),
          child: Text(
            text,
            style: GoogleFonts.inter(
                color: Colors.white, fontWeight: FontWeight.w500, fontSize: 15),
          ),
        ),
      ),
    );
  }
}
