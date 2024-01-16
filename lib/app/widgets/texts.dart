import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Texts {
  static Text headingXL(
    String text, {
    FontFamilies fontFamilies = FontFamilies.poppins,
  }) {
    return Text(
      text,
      style: _mapFontFamilies(fontFamilies) == "Poppins"
          ? GoogleFonts.poppins(
              textStyle: const TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.w600,
              ),
            )
          : GoogleFonts.plusJakartaSans(
              textStyle: const TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.w600,
              ),
            ),
    );
  }

  static Text headingL(String text,
      {FontFamilies fontFamilies = FontFamilies.poppins}) {
    return Text(
      text,
      style: _mapFontFamilies(fontFamilies) == "Poppins"
          ? GoogleFonts.poppins(
              textStyle: const TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.w600,
              ),
            )
          : GoogleFonts.plusJakartaSans(
              textStyle: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w600,
              ),
            ),
    );
  }

  static Text headingM(
    String text,
  ) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600,
      ),
    );
  }

  static Text headingS(
    String text,
  ) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600,
      ),
    );
  }

  static Text textL(
    String text, {
    FontWeights fontWeights = FontWeights.regular,
  }) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 16,
        fontWeight: _mapFontWeights(fontWeights),
      ),
    );
  }

  static Text textM(
    String text, {
    FontWeights fontWeights = FontWeights.regular,
  }) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 14,
        fontWeight: _mapFontWeights(fontWeights),
      ),
    );
  }

  static Text textS(
    String text, {
    FontWeights fontWeights = FontWeights.regular,
  }) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 12,
        fontWeight: _mapFontWeights(fontWeights),
      ),
    );
  }

  static Text textXS(
    String text, {
    FontWeights fontWeights = FontWeights.regular,
  }) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 10,
        fontWeight: _mapFontWeights(fontWeights),
      ),
    );
  }

  static FontWeight _mapFontWeights(FontWeights fontWeights) {
    switch (fontWeights) {
      case FontWeights.bold:
        return FontWeight.bold;
      case FontWeights.semiBold:
        return FontWeight.w600;
      case FontWeights.medium:
        return FontWeight.w500;
      case FontWeights.regular:
        return FontWeight.w400;
    }
  }

  static String _mapFontFamilies(FontFamilies fontFamilies) {
    switch (fontFamilies) {
      case FontFamilies.poppins:
        return "Poppins";
      case FontFamilies.plus:
        return "Plus";
    }
  }
}

enum FontWeights {
  bold,
  semiBold,
  medium,
  regular,
}

enum FontFamilies {
  poppins,
  plus,
}
