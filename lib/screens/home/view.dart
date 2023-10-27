import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:music/screens/home/components/hot_recommended.dart';
import 'package:music/screens/home/components/item_recent.dart';
import 'package:music/screens/home/components/play_list.dart';
import 'package:music/screens/home/controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final controller = HomeController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsetsDirectional.only(start: 20.w, top: 25.h),
        children: [
          Text(
            'Hot Recommended',
            style: TextStyle(
                fontSize: 15.sp,
                fontWeight: FontWeight.w400,
                color: Colors.white.withOpacity(0.8)),
          ),
          SingleChildScrollView(
            padding: EdgeInsetsDirectional.only(top: 19.h),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                  controller.hotModels.length,
                  (index) => ItemHotRecommended(
                        model: controller.hotModels[index],
                      )),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.only(top: 28.5.h, bottom: 20.5.h),
            child: Divider(
              endIndent: 20.w,
              color: Colors.grey,
              thickness: 1,
            ),
          ),
          Text(
            'Play Lists',
            style: TextStyle(
                fontSize: 15.sp,
                fontWeight: FontWeight.w400,
                color: const Color(0xffD0D1D4)),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsetsDirectional.only(top: 19.h),
            child: Row(
              children: List.generate(
                  controller.playListModels.length,
                  (index) => ItemPlayList(
                        model: controller.playListModels[index],
                      )),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.only(top: 28.5.h, bottom: 20.5.h),
            child: Divider(
              endIndent: 20.w,
              color: Colors.grey,
              thickness: 1,
            ),
          ),
          ExpansionTile(
            onExpansionChanged: (value) {
              controller.viewAll = value;
              setState(() {});
            },
            tilePadding: EdgeInsetsDirectional.only(start: 0.w, end: 21.w),
            title: Text(
              'Recently Played',
              style: TextStyle(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w400,
                  color: Colors.white.withOpacity(0.8)),
            ),
            trailing: controller.viewAll
                ? const SizedBox.shrink()
                : Text(
                    'View All',
                    style: TextStyle(
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xffED8770)),
                  ),
            children: [
              ItemRecent(model: controller.recentItems[2], intialRate: 4.5),
              ItemRecent(model: controller.recentItems[3], intialRate: 1.5),
            ],
          ),
          ItemRecent(model: controller.recentItems[0], intialRate: 2.5),
          ItemRecent(model: controller.recentItems[1], intialRate: 3),
        ],
      ),
    );
  }
}
