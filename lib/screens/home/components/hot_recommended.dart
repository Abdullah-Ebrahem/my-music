import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:music/screens/home/model.dart';

class ItemHotRecommended extends StatelessWidget {
  final HomeModel model;
  const ItemHotRecommended({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.only(end: 19.w),
      height: 178.h,
      width: 229.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            model.imgUrl!,
            width: 229.w,
            height: 125.h,
            fit: BoxFit.fill,
          ),
          SizedBox(
            height: 15.h,
          ),
          Text(
            model.title,
            style: TextStyle(
                fontSize: 13.sp,
                fontWeight: FontWeight.w400,
                color: Colors.white.withOpacity(0.6)),
          ),
          SizedBox(
            height: 5.h,
          ),
          Text(
            model.subTitle,
            style: TextStyle(
                color: const Color(0xff585A66),
                fontSize: 10.sp,
                fontWeight: FontWeight.w400),
          )
        ],
      ),
    );
  }
}
