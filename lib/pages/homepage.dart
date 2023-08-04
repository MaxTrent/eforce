import 'package:eforce/pages/pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int _selectedIndex = 0;
  final List<Widget> _pages = [
    const DashboardPage(),
    // const Stuff(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(428, 926),
      builder: (BuildContext context, child) => Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          elevation: 20,
          currentIndex: 0,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [BottomNavigationBarItem(icon: Image.asset('assets/home.png'), label: 'Home'),
          BottomNavigationBarItem(icon: Image.asset('assets/omo.png'),label: 'No Idea'),
          BottomNavigationBarItem(icon: Image.asset('assets/profile.png'), label: 'Profile')],
        ),
        body: _pages[0],
      ),
    );
  }
}
