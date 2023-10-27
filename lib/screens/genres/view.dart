import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:music/screens/genres/controller.dart';

class GenresScreen extends StatefulWidget {
  const GenresScreen({super.key});

  @override
  State<GenresScreen> createState() => _GenresScreenState();
}

class _GenresScreenState extends State<GenresScreen> {
  final controller = GenresController();
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsetsDirectional.only(top: 22.h, start: 20.w, end: 20.w),
      itemCount: controller.models.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: 118.h,
          mainAxisSpacing: 12.h,
          crossAxisSpacing: 12.w,
          crossAxisCount: 2),
      itemBuilder: (context, index) => Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(controller.models[index].imgUrl),
                fit: BoxFit.fill)),
        width: 389.w,
        height: 803.h,
        child: Center(
            child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              controller.models[index].title,
              style: TextStyle(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w400,
                  color: Colors.white),
            ),
            Text(
              '${controller.models[index].songsNumber.toString()} Songs',
              style: TextStyle(
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w400,
                  color: Colors.white),
            ),
          ],
        )),
      ),
    );
  }
}
