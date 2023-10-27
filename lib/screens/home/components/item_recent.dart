import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:music/screens/home/model.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ItemRecent extends StatelessWidget {
  final HomeModel model;
  final double intialRate;
  const ItemRecent({super.key, required this.model, required this.intialRate});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 30.w,
        height: 30.w,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(width: 1, color: const Color(0xffED8770))),
        child: Icon(
          Icons.play_arrow,
          size: 20.w,
          color: const Color(0xffED8770),
        ),
      ),
      title: Text(
        model.title,
        style: TextStyle(
            color: Colors.white.withOpacity(0.6),
            fontSize: 13.sp,
            fontWeight: FontWeight.w400),
      ),
      subtitle: Text(
        model.subTitle,
        style: TextStyle(
            color: Colors.white.withOpacity(0.28),
            fontSize: 10.sp,
            fontWeight: FontWeight.w400),
      ),
      trailing: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          GestureDetector(
            child: const Icon(
              Icons.heart_broken_rounded,
              color: Color(0xffEE5A30),
            ),
          ),
          RatingBar.builder(
            allowHalfRating: true,
            initialRating: intialRate,
            glowColor: const Color(0xffE1914B),
            itemSize: 20.h,
            itemBuilder: (context, index) => const Icon(
              Icons.star,
              color: Color(0xffE1914B),
            ),
            onRatingUpdate: (rating) {},
          )
        ],
      ),
    );
  }
}
