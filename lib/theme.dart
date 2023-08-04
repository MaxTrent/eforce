import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';


abstract class AppColors{
  static const lightScaffold = Colors.white60;
}

class AppTheme{
  final darkBase = ThemeData.dark();
  final lightBase = ThemeData.light();

  ThemeData get light => ThemeData(
    scaffoldBackgroundColor: AppColors.lightScaffold,
    textTheme: TextTheme(
      headline1: GoogleFonts.inter(
        textStyle: TextStyle(
          color: Colors.black,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w600,
          fontSize: 12.sp,
        ),
      ),
      headline2: GoogleFonts.inter(
        textStyle: TextStyle(
          color: Colors.black,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w500,
          fontSize: 15.sp,
        ),
      ),
      headline3: GoogleFonts.inter(
        textStyle: TextStyle(
          color: Colors.black,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w600,
          fontSize: 18.sp,
        ),
      ),
    )
  );

  ThemeData get dark => ThemeData(

  );
}
