import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'controller.dart';

class AtristsScreen extends StatefulWidget {
  const AtristsScreen({super.key});

  @override
  State<AtristsScreen> createState() => _AtristsScreenState();
}

class _AtristsScreenState extends State<AtristsScreen> {
  final controller = ArtistsController();
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsetsDirectional.only(top: 22.h),
      itemCount: controller.models.length,
      itemBuilder: (context, index) => ListTile(
        leading: Image.asset(
          controller.models[index].imgUrl,
          width: 80.w,
          height: 80.h,
          fit: BoxFit.fill,
        ),
        title: Text(
          controller.models[index].title,
          style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
              color: const Color(0xffEEEEEE)),
        ),
        subtitle: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              '${controller.models[index].numberOfAlbums} Albums',
              style: TextStyle(
                  fontSize: 11.sp,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xffC1C0C0)),
            ),
            Padding(
              padding: EdgeInsetsDirectional.symmetric(horizontal: 10.w),
              child: CircleAvatar(
                radius: 1.5.r,
                backgroundColor: Colors.white.withOpacity(0.8),
              ),
            ),
            Text(
              '${controller.models[index].numberOfSongs} Songs',
              style: TextStyle(
                  fontSize: 11.sp,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xffC1C0C0)),
            ),
          ],
        ),
        trailing: PopupMenuButton(
            color: const Color(0xff383B49),
            child: const Icon(
              Icons.more_vert,
              color: Colors.white,
            ),
            itemBuilder: (context) => List.generate(
                controller.popupItems.length,
                (index) => PopupMenuItem(
                        child: Text(
                      controller.popupItems[index],
                      style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xffEEEEEE)),
                    )))),
      ),
    );
  }
}
