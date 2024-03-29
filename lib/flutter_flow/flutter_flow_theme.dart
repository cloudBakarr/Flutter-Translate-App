import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: avoid_classes_with_only_static_members
class FlutterFlowTheme {
  static const Color primaryColor = Color(0xFF39D2C0);
  static const Color secondaryColor = Color(0xFF4B39EF);
  static const Color tertiaryColor = Color(0xFF090F13);

  static const Color customColor1 = Color(0xFFFFFFFF);
  static const Color grayLight = Color(0xFF95A1AC);
  static const Color grayLighter = Color(0xFFDBE2E7);
  static const Color background = Color(0xFFF0F5F6);
  static const Color dark400 = Color(0xFF1D2429);
  static const Color grayDark = Color(0xFF57636C);

  String primaryFontFamily = 'Poppins';
  String secondaryFontFamily = 'Roboto';
  static TextStyle get title1 => GoogleFonts.getFont(
        'Lexend Deca',
        color: tertiaryColor,
        fontWeight: FontWeight.bold,
        fontSize: 28,
      );
  static TextStyle get title2 => GoogleFonts.getFont(
        'Lexend Deca',
        color: tertiaryColor,
        fontWeight: FontWeight.w600,
        fontSize: 24,
      );
  static TextStyle get title3 => GoogleFonts.getFont(
        'Lexend Deca',
        color: primaryColor,
        fontWeight: FontWeight.w500,
        fontSize: 20,
      );
  static TextStyle get subtitle1 => GoogleFonts.getFont(
        'Lexend Deca',
        color: tertiaryColor,
        fontWeight: FontWeight.w500,
        fontSize: 20,
      );
  static TextStyle get subtitle2 => GoogleFonts.getFont(
        'Lexend Deca',
        color: tertiaryColor,
        fontWeight: FontWeight.normal,
        fontSize: 16,
      );
  static TextStyle get bodyText1 => GoogleFonts.getFont(
        'Lexend Deca',
        color: tertiaryColor,
        fontWeight: FontWeight.normal,
        fontSize: 14,
      );
  static TextStyle get bodyText2 => GoogleFonts.getFont(
        'Lexend Deca',
        color: grayLight,
        fontWeight: FontWeight.normal,
        fontSize: 14,
      );
}

extension TextStyleHelper on TextStyle {
  TextStyle override({
    String fontFamily,
    Color color,
    double fontSize,
    FontWeight fontWeight,
    FontStyle fontStyle,
    bool useGoogleFonts = true,
    double lineHeight,
  }) =>
      useGoogleFonts
          ? GoogleFonts.getFont(
              fontFamily,
              color: color ?? this.color,
              fontSize: fontSize ?? this.fontSize,
              fontWeight: fontWeight ?? this.fontWeight,
              fontStyle: fontStyle ?? this.fontStyle,
              height: lineHeight,
            )
          : copyWith(
              fontFamily: fontFamily,
              color: color,
              fontSize: fontSize,
              fontWeight: fontWeight,
              fontStyle: fontStyle,
              height: lineHeight,
            );
}
