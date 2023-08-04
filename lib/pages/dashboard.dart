import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  String amount = '15,000.00';

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(designSize: const Size(428, 926),
      builder: (BuildContext context, child) => SafeArea(
          child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 70.h),
          child: Column(
            children: [
              // SizedBox(height: 70.h,),
              Row(crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Container(
                  width: 131.w,
                  height: 40.h,
                  decoration: BoxDecoration(
                    color: Colors.white, // You can change the background color here
                    borderRadius: BorderRadius.circular(19.r), // Set the radius for rounded corners
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset('assets/currency.png'),
                          Text(amount,
                            style: Theme.of(context).textTheme.headline2,
                          ),
                        ],
                      ),
                    ),
                  ),),
                Row(
                  children: [
                    IconButton(onPressed: () {}, icon: Image.asset('assets/notification.png')),
                    IconButton(onPressed: () {}, icon: Image.asset('assets/sort.png')),
                  ],
                ),
              ]),
              SizedBox(height: 20.h,),
              Container(
                width: 450.w,
                height: 149.h,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [
                      Color(0xff047DD6),
                      Color(0xff34C2EF),
                      Color(0xff4F97DA),
                    ]
                  ),

                  borderRadius: BorderRadius.circular(30.r), // Set the radius for rounded corners
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
