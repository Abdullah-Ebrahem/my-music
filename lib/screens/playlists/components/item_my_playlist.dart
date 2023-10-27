import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:music/screens/playlists/model.dart';

class ItemMyPlaylist extends StatelessWidget {
  final PlaylistsModel model;
  const ItemMyPlaylist({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.only(end: 18.w),
      width: 90.w,
      height: 113.h,
      child: Column(
        children: [
          Image.asset(
            model.imgUrl,
            width: 90.w,
            height: 81.h,
            fit: BoxFit.fill,
          ),
          const Spacer(),
          Text(
            model.title,
            style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w400,
                color: Colors.white.withOpacity(0.6),
                overflow: TextOverflow.ellipsis),
          )
        ],
      ),
    );
  }
}
