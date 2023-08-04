import 'package:eforce/pages/pages.dart';
import 'package:eforce/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(MyApp(appTheme: AppTheme(),));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key, required this.appTheme});
  final AppTheme appTheme;

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return ScreenUtilInit(
      builder: (BuildContext context, child) => MaterialApp(
        theme: widget.appTheme.light,
        themeMode: ThemeMode.system,
        debugShowCheckedModeBanner: false,
        initialRoute: '/homepage',
        routes: {
          '/homepage': (context)=> const HomePage(),
        },
      ),
      designSize: const Size(428, 926),
    );
  }
}
