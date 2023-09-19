import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ActivityWidget extends StatelessWidget {
  final String text;

  const ActivityWidget({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            text,
            style: GoogleFonts.inter(fontSize: 14, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(width: 10),
        Text(
          '5 min',
          style: GoogleFonts.inter(
              color: const Color(0xFF7E7E7E),
              fontSize: 12,
              fontWeight: FontWeight.w500),
        ),
        const SizedBox(width: 80),
        Flex(
          direction: Axis.horizontal,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: InkWell(
                onTap: () {},
                child: const Icon(
                  Icons.arrow_forward_ios,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 30)
      ],
    );
  }
}
