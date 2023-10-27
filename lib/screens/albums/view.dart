import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:music/screens/albums/controller.dart';

class AlbumsScreen extends StatefulWidget {
  const AlbumsScreen({super.key});

  @override
  State<AlbumsScreen> createState() => _AlbumsScreenState();
}

class _AlbumsScreenState extends State<AlbumsScreen> {
  final controller = AlbumsController();
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsetsDirectional.only(top: 22.h, start: 20.w, end: 20.w),
      itemCount: controller.models.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: 207.h,
          mainAxisSpacing: 20.h,
          crossAxisSpacing: 24.w,
          crossAxisCount: 2),
      itemBuilder: (context, index) => SizedBox(
        height: 207.h,
        width: 156.w,
        child: Column(
          children: [
            Image.asset(
              controller.models[index].imgUrl,
              width: MediaQuery.of(context).size.width,
              height: 156.h,
              fit: BoxFit.fill,
            ),
            SizedBox(
              height: 12.h,
            ),
            Row(
              children: [
                Text(
                  controller.models[index].title,
                  style: TextStyle(
                      fontSize: 11.sp,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xffEEEEEE)),
                ),
                const Spacer(),
                PopupMenuButton(
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
                            ))))
              ],
            ),
            Row(
              children: [
                Text(
                  controller.models[index].subTitle,
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
                Expanded(
                  child: Text(
                    '${controller.models[index].numberOfSongs} songs',
                    style: TextStyle(
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xffC1C0C0),
                        overflow: TextOverflow.ellipsis),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
