import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppThemeData {
  static const _lightFillColor = Colors.black;
  static const _darkFillColor = Colors.white;
  static final Color _lightFocusColor = Colors.black.withOpacity(0.12);

  static ThemeData themeData() {
    return ThemeData(
      colorScheme: lightColorScheme,
      textTheme: _textTheme,
      primaryColor: Colors.red,
      appBarTheme: AppBarTheme(
        backgroundColor: lightColorScheme.background,
        titleTextStyle: _textTheme.headline4,
        centerTitle: true,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
        // actionsIconTheme: const IconThemeData(color: Colors.black)
      ),
      iconTheme: IconThemeData(color: lightColorScheme.onPrimary),
      canvasColor: lightColorScheme.background,
      scaffoldBackgroundColor: lightColorScheme.background,
      highlightColor: Colors.transparent,
      focusColor: _lightFocusColor,
      snackBarTheme: SnackBarThemeData(
        behavior: SnackBarBehavior.floating,
        backgroundColor: Color.alphaBlend(
          _lightFillColor.withOpacity(0.80),
          _darkFillColor,
        ),
        contentTextStyle: _textTheme.subtitle1?.apply(color: _darkFillColor),
      ),
      elevatedButtonTheme: _elevatedButtonThemeData,
      tabBarTheme: TabBarTheme(
        indicator: const BoxDecoration(
          border: Border(
            bottom: BorderSide(width: 3, color: Colors.red),
          ),
        ),
        indicatorSize: TabBarIndicatorSize.tab,
        labelColor: Colors.red,
        labelStyle: _textTheme.headline4,
        unselectedLabelColor: Colors.black,
        unselectedLabelStyle: _textTheme.headline4,
      ),
      
    );
  }

  static const ColorScheme lightColorScheme = ColorScheme(
    primary: Colors.red,
    primaryVariant: Color(0xFF117378),
    secondary: Color(0xFFEFF3F3),
    secondaryVariant: Color(0xFFFAFBFB),
    background: Colors.white,
    surface: Color(0xFFFAFBFB),
    onBackground: Colors.white,
    error: _lightFillColor,
    onError: _lightFillColor,
    onPrimary: _lightFillColor,
    onSecondary: Color(0xFF322942),
    onSurface: Color(0xFF241E30),
    brightness: Brightness.light,
  );

  static const _regular = FontWeight.w400;
  static const _medium = FontWeight.w500;
  static const _semiBold = FontWeight.w600;
  static const _bold = FontWeight.w700;

  static final TextTheme _textTheme = TextTheme(
    headline1: GoogleFonts.roboto(
        fontWeight: _semiBold,
        fontSize: 16.0,
        color: ColorName.blackSecondary),
    headline2: GoogleFonts.roboto(fontWeight: _semiBold, fontSize: 16.0),
    headline3: GoogleFonts.quicksand(
        fontWeight: _semiBold, fontSize: 20.0, color: Colors.black),
    headline4: GoogleFonts.quicksand(
        fontWeight: _bold, fontSize: 18.0, color: Colors.black),
    headline5: GoogleFonts.roboto(fontWeight: _medium, fontSize: 16.0),
    headline6: GoogleFonts.roboto(fontWeight: _bold, fontSize: 16.0),
    caption: GoogleFonts.roboto(fontWeight: _semiBold, fontSize: 16.0),
    overline: GoogleFonts.roboto(fontWeight: _medium, fontSize: 12.0),
    bodyText1: GoogleFonts.roboto(fontWeight: _regular, fontSize: 14.0),
    bodyText2: GoogleFonts.roboto(fontWeight: _regular, fontSize: 16.0),
    subtitle1: GoogleFonts.roboto(fontWeight: _medium, fontSize: 16.0),
    subtitle2: GoogleFonts.roboto(fontWeight: _medium, fontSize: 14.0),
    button: GoogleFonts.roboto(
        fontWeight: _semiBold, fontSize: 14.0, color: Colors.white),
  );

  static final ElevatedButtonThemeData _elevatedButtonThemeData =
      ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              primary: Colors.red, onPrimary: Colors.white));

  static final TextStyle logoFontLight = GoogleFonts.dongle(
      color: Colors.white, fontSize: 32, letterSpacing: 2.0);
}
