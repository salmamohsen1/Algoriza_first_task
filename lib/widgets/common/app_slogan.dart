import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppSlogan extends StatelessWidget {
  const AppSlogan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "7",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            color: Color(0xFFecb878),
          ),
        ),
        Text(
          "Krave",
          style: GoogleFonts.ubuntu(
            color: const Color(0xFF02afa6),
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
