import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ItemDrawer extends StatelessWidget {
  final String number;
  final String title;
  const ItemDrawer({super.key, required this.number, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          number,
          style: TextStyle(
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
              color: const Color(0xffC1C0C0)),
        ),
        Text(
          title,
          style: TextStyle(
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
              color: const Color(0xffC1C0C0)),
        ),
      ],
    );
  }
}
