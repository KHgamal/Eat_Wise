
import 'package:eat_wise/core/common/styles/colors_app.dart';
import 'package:eat_wise/core/common/styles/media.dart';
import 'package:eat_wise/features/meal/presentation/views/home_page.dart';
import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  double _opacity = 0.0;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 500), () {
      setState(() {
        _opacity = 1.0;
      });
    });

    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(context,  MaterialPageRoute(builder: (BuildContext context) => const HomePage())); 
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: AnimatedOpacity(
              duration: const Duration(seconds: 2),
              opacity: _opacity,
              child: Image.asset(Assets.assetsImagesBitelog, width: 150.w, height: 150.h),
            ),
          ),
        const Center(child:  Text("Eat Wise" , style: TextStyle(fontSize: 40 , color: AppColors.orange),))
        ],
      ),
    );
  }
}
