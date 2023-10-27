import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:music/screens/songs/controller.dart';

class AllSongsScreen extends StatefulWidget {
  const AllSongsScreen({
    super.key,
  });

  @override
  State<AllSongsScreen> createState() => _AllSongsScreenState();
}

class _AllSongsScreenState extends State<AllSongsScreen> {
  final controller = SongsController();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsetsDirectional.only(top: 10.h),
      itemCount: controller.models.length,
      itemBuilder: (context, index) => ListTile(
        leading: CircleAvatar(
          radius: 23.r,
          backgroundImage: AssetImage(controller.models[index].imgUrl),
          child: Center(
            child: CircleAvatar(
              radius: 7.r,
              backgroundColor: const Color(0xff272B36),
            ),
          ),
        ),
        title: Text.rich(TextSpan(
            style: TextStyle(
                fontSize: 13.sp,
                fontWeight: FontWeight.w400,
                color: Colors.white.withOpacity(0.6)),
            text: '${controller.models[index].title}\n',
            children: [
              TextSpan(
                  style: TextStyle(
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w400,
                      color: Colors.white.withOpacity(0.28)),
                  text: controller.models[index].subTitle)
            ])),
        subtitle: Divider(
          thickness: 1.h,
          color: Colors.white.withOpacity(0.07),
        ),
        trailing: Container(
          width: 22.w,
          height: 22.w,
          decoration: BoxDecoration(
              border: Border.all(color: const Color(0xffED8770)),
              shape: BoxShape.circle),
          child: Icon(
            Icons.play_arrow_rounded,
            size: 10.w,
            color: const Color(0xffED8770),
          ),
        ),
      ),
    );
  }
}
