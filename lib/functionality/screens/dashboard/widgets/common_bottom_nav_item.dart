import 'package:flutter/material.dart';
import 'package:travel_app/core/constant/z_constant_file.dart';

class AppBottomBar extends StatelessWidget {
  final int index;
  final Function(int) onTap;

  const AppBottomBar({super.key, required this.onTap, this.index = 0});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 72.h,
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(112, 144, 176, 0.08),
            spreadRadius: 10,
            blurRadius: 20,
            offset: Offset(2, 0),
          ),
        ],
      ),
      child: Material(
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              splashColor: ColorConstant.colorCEF9FF,
              splashRadius: 100.r,
              onPressed: () => onTap(0),
              icon: Icon(
                Icons.home_rounded,
                color: index == 0 ? ColorConstant.color1C9FE2 : Colors.grey[400],
              ),
            ),
            IconButton(
              splashColor: ColorConstant.colorCEF9FF,
              splashRadius: 100.r,
              onPressed: () => onTap(1),
              icon: Icon(
                Icons.person,
                color: index == 1 ? ColorConstant.color1C9FE2 : Colors.grey[400],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
