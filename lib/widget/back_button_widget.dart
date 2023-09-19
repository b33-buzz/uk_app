import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BackButtonWidget extends StatelessWidget {
  final String text;

  const BackButtonWidget({
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Icon(Icons.arrow_back_ios, color: Colors.white),
              const SizedBox(height: 15),
              Text(
                text,
                style: GoogleFonts.inter(
                  textStyle: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
