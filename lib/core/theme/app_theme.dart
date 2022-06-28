import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static get header => GoogleFonts.cairoTextTheme().bodySmall?.copyWith(
        color: Colors.grey,
        fontWeight: FontWeight.bold,
        fontSize: 12,
      );
}
