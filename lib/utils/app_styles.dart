import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

sealed class AppStyles {
  static final TextStyle styleRegular16 = GoogleFonts.montserrat(
    color: const Color(0xFF064061),
    fontSize: 16,
    fontWeight: .w400,
  );
  static final TextStyle styleMedium16 = GoogleFonts.montserrat(
    color: const Color(0xFF064061),
    fontSize: 16,
    fontWeight: .w500,
  );
  static final TextStyle styleSemiBold16 = GoogleFonts.montserrat(
    color: const Color(0xFF064061),
    fontSize: 16,
    fontWeight: .w600,
  );
  static final TextStyle styleSemiBold18 = GoogleFonts.montserrat(
    color: Colors.white,
    fontSize: 18,
    fontWeight: .w600,
  );
  static final TextStyle styleSemiBold20 = GoogleFonts.montserrat(
    color: const Color(0xFF064061),
    fontSize: 20,
    fontWeight: .w600,
  );
  static final TextStyle styleSemiBold24 = GoogleFonts.montserrat(
    color: const Color(0xFF4EB7F2),
    fontSize: 24,
    fontWeight: .w600,
  );
  static final TextStyle styleRegular12 = GoogleFonts.montserrat(
    color: const Color(0xFFAAAAAA),
    fontSize: 12,
    fontWeight: .w400,
  );
  static final TextStyle styleRegular14 = GoogleFonts.montserrat(
    color: const Color(0xFFAAAAAA),
    fontSize: 14,
    fontWeight: .w400,
  );
  static final TextStyle styleBold16 = GoogleFonts.montserrat(
    color: const Color(0xFF4EB7F2),
    fontSize: 16,
    fontWeight: .bold,
  );
  static final TextStyle styleMedium20 = GoogleFonts.montserrat(
    color: Colors.white,
    fontSize: 20,
    fontWeight: .w500,
  );
}
