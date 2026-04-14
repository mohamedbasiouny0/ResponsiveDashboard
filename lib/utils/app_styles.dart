import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test1/utils/size_config.dart';

sealed class AppStyles {
  static TextStyle styleRegular16(BuildContext context) =>
      GoogleFonts.montserrat(
        color: const Color(0xFF064061),
        fontSize: getResponsiveFontSize(context, baseFontSize: 16),
        fontWeight: .w400,
      );

  static TextStyle styleMedium16(BuildContext context) =>
      GoogleFonts.montserrat(
        color: const Color(0xFF064061),
        fontSize: getResponsiveFontSize(context, baseFontSize: 16),
        fontWeight: FontWeight.w500,
      );

  static TextStyle styleSemiBold16(BuildContext context) =>
      GoogleFonts.montserrat(
        color: const Color(0xFF064061),
        fontSize: getResponsiveFontSize(context, baseFontSize: 16),
        fontWeight: FontWeight.w600,
      );

  static TextStyle styleSemiBold18(BuildContext context) =>
      GoogleFonts.montserrat(
        color: Colors.white,
        fontSize: getResponsiveFontSize(context, baseFontSize: 18),
        fontWeight: FontWeight.w600,
      );

  static TextStyle styleSemiBold20(BuildContext context) =>
      GoogleFonts.montserrat(
        color: const Color(0xFF064061),
        fontSize: getResponsiveFontSize(context, baseFontSize: 20),
        fontWeight: FontWeight.w600,
      );

  static TextStyle styleSemiBold24(BuildContext context) =>
      GoogleFonts.montserrat(
        color: const Color(0xFF4EB7F2),
        fontSize: getResponsiveFontSize(context, baseFontSize: 24),
        fontWeight: FontWeight.w600,
      );

  static TextStyle styleRegular12(BuildContext context) =>
      GoogleFonts.montserrat(
        color: const Color(0xFFAAAAAA),
        fontSize: getResponsiveFontSize(context, baseFontSize: 12),
        fontWeight: FontWeight.w400,
      );

  static TextStyle styleRegular14(BuildContext context) =>
      GoogleFonts.montserrat(
        color: const Color(0xFFAAAAAA),
        fontSize: getResponsiveFontSize(context, baseFontSize: 14),
        fontWeight: FontWeight.w400,
      );

  static TextStyle styleBold16(BuildContext context) => GoogleFonts.montserrat(
    color: const Color(0xFF4EB7F2),
    fontSize: getResponsiveFontSize(context, baseFontSize: 16),
    fontWeight: FontWeight.bold,
  );

  static TextStyle styleMedium20(BuildContext context) =>
      GoogleFonts.montserrat(
        color: Colors.white,
        fontSize: getResponsiveFontSize(context, baseFontSize: 20),
        fontWeight: FontWeight.w500,
      );

  static double scaleFactor(BuildContext context) {
    // PlatformDispatcher dispatcher = PlatformDispatcher.instance;
    // double physicalWidth = dispatcher.views.first.physicalSize.width;
    // double devicePixelRatio = dispatcher.views.first.devicePixelRatio;
    // double width = physicalWidth / devicePixelRatio;
    double width = MediaQuery.widthOf(context);
    if (width < SizeConfig.tablet) {
      return width / 600;
    } else if (width < SizeConfig.desktop) {
      return width / 1000;
    } else {
      return width / 1920;
    }
  }

  static double getResponsiveFontSize(
    BuildContext context, {
    required double baseFontSize,
  }) {
    double resposiveFontSize = baseFontSize * scaleFactor(context);
    double lowerLimit = resposiveFontSize * 0.8;
    double upperLimit = resposiveFontSize * 1.2;
    return resposiveFontSize.clamp(lowerLimit, upperLimit);
  }
}
