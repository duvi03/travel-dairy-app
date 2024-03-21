import 'package:flutter/material.dart';
import 'package:travel_app/core/constant/z_constant_file.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.sp),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Travel Dairy",
                        style: TextStyle(
                          fontSize: 32.sp,
                          fontWeight: FontWeight.w700,
                          fontFamily: FontFamily.primary,
                        ),
                      ),
                      Text(
                        "Let's explore the world",
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          fontFamily: FontFamily.primary,
                        ),
                      ),
                    ],
                  ),
                  ClipOval(
                    child: Image.asset(
                      ImageConstant.userProfile2,
                      fit: BoxFit.cover,
                      height: 50.sp,
                      width: 50.sp,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
