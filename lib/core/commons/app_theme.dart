import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:playground_news/core/commons/color_const.dart';
import 'package:playground_news/core/utils/ui_helper.dart';

class AppTheme {
  AppTheme._();
  static ThemeData theme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: ColorConst.whiteColor,
    brightness: Brightness.light,
    primaryColor: ColorConst.black,
    textTheme: textTheme,
    primaryTextTheme: textTheme.apply(
      bodyColor: ColorConst.black,
      displayColor: ColorConst.black,
      decorationColor: ColorConst.black,
    ),
    appBarTheme: AppBarTheme(
      toolbarHeight: UiHelper.setSp(70),
      color: Colors.white,
      actionsIconTheme: const IconThemeData(color: Colors.black),
      iconTheme: const IconThemeData(color: Colors.black),
      titleTextStyle: GoogleFonts.poppins().copyWith(
        color: ColorConst.black,
        fontWeight: FontWeight.bold,
        fontSize: UiHelper.setSp(17),
      ),
      shadowColor: ColorConst.lightGrey.withOpacity(0.2),
    ),
    iconTheme: IconThemeData(
      color: Colors.black,
      size: UiHelper.setFont(15),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.resolveWith<Color>((states) {
          if (states.contains(MaterialState.disabled)) {
            return ColorConst.primary; // Disabled color
          }
          return ColorConst.primary; // Regular color
        }),
        backgroundColor: MaterialStateProperty.resolveWith<Color>((states) {
          if (states.contains(MaterialState.disabled)) {
            return ColorConst.grey; // Disabled color
          }
          return ColorConst.lightBlue; // Regular color
        }),
        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
            UiHelper.padding(vertical: 12, horizontal: 50)),
        elevation: MaterialStateProperty.all<double>(0),
        shape: MaterialStateProperty.all<OutlinedBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(UiHelper.setSp(10)),
          ),
        ),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.resolveWith<Color>((states) {
          if (states.contains(MaterialState.disabled)) {
            return ColorConst.lightGrey; // Disabled color
          }
          return ColorConst.primary; // Regular color
        }),
        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(EdgeInsets.zero),
      ),
    ),
    dividerTheme: DividerThemeData(
      color: ColorConst.grey.withOpacity(0.5),
    ),
  );

  static TextTheme textTheme = TextTheme(
    displayLarge: GoogleFonts.poppins().copyWith(
      fontSize: 20.sp,
      fontWeight: FontWeight.bold,
    ),
    displayMedium: GoogleFonts.poppins().copyWith(
      fontSize: 18.sp,
      fontWeight: FontWeight.bold,
    ),
    displaySmall: GoogleFonts.poppins().copyWith(
      fontSize: 16.sp,
      fontWeight: FontWeight.bold,
    ),
    headlineMedium: GoogleFonts.poppins().copyWith(
      fontSize: 14.sp,
      fontWeight: FontWeight.bold,
    ),
    headlineSmall: GoogleFonts.poppins().copyWith(
      fontSize: 12.sp,
      fontWeight: FontWeight.bold,
    ),
    titleLarge: GoogleFonts.poppins().copyWith(
      fontSize: 20.sp,
      fontWeight: FontWeight.bold,
    ),
    bodyLarge: GoogleFonts.poppins().copyWith(fontSize: 14.sp),
    bodyMedium: GoogleFonts.poppins().copyWith(fontSize: 13.sp),
    titleMedium: GoogleFonts.poppins(fontSize: 18.sp),
    titleSmall: GoogleFonts.poppins(fontSize: 16.sp),
    bodySmall: GoogleFonts.poppins(fontSize: 12.sp),
    labelLarge:
        GoogleFonts.poppins(fontSize: 14.sp, fontWeight: FontWeight.bold),
    labelMedium: GoogleFonts.poppins(fontSize: 12),
    labelSmall: GoogleFonts.poppins(
      fontSize: 10.sp,
      letterSpacing: 0.0,
    ),
  ).apply(
    bodyColor: Colors.black,
    displayColor: Colors.black,
    decorationColor: Colors.black,
  );

  static List<BoxShadow> defaultBoxShadow = [
    BoxShadow(
      color: Colors.grey.withOpacity(0.2),
      spreadRadius: 5,
      blurRadius: 5,
      offset: const Offset(0, 1), // changes position of shadow
    ),
  ];
}
