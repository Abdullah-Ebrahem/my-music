import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:music/core/item_list_model.dart';
import 'package:music/screens/home/view.dart';
import 'package:music/screens/settings/view.dart';
import 'package:music/screens/songs/view.dart';

class MasterController {
  int currentIndex = 0;
  var screens = const [HomeScreen(), SongsScreen(), SettingsScreen()];
  List<String> bottomIcons = const ['icon_home', 'icon_music'];
  List<String> bottomLabels = const ['Home', 'Songs', 'Settings'];

  var title = [
    TextFormField(
      decoration: InputDecoration(
          prefixIcon: Padding(
            padding: EdgeInsetsDirectional.only(start: 10.w, end: 50.w),
            child: const Icon(Icons.search),
          ),
          filled: true,
          fillColor: const Color(0xff292E4B),
          contentPadding: EdgeInsetsDirectional.only(
            start: 100.w,
          ),
          hintText: 'Search album song',
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(28.r),
              borderSide: BorderSide.none)),
    ),
    Text(
      'Songs',
      style: TextStyle(fontSize: 17.sp),
    ),
    Text(
      'Settings',
      style: TextStyle(fontSize: 17.sp),
    ),
  ];

  List<ItemListModel> models = [
    ItemListModel(
        imgUrl: 'assets/images/paint.png',
        h: 23.73.w,
        w: 23.73.w,
        title: 'Themes'),
    ItemListModel(
        imgUrl: 'assets/images/scissors.png',
        h: 18.h,
        w: 20.26.w,
        title: 'Ringtone cutter'),
    ItemListModel(
        imgUrl: 'assets/images/stopwatch.png',
        h: 21.h,
        w: 17.52.w,
        title: 'Sleep timer'),
    ItemListModel(
        imgUrl: 'assets/images/equaliser.png',
        h: 17.58.w,
        w: 17.58.w,
        title: 'Equaliser'),
    ItemListModel(
        imgUrl: 'assets/images/car.png',
        h: 10.h,
        w: 20.26.w,
        title: 'Drive mode'),
    ItemListModel(
        imgUrl: 'assets/images/folder.png',
        h: 16.02.h,
        w: 20.26.w,
        title: 'Hidden folders'),
    ItemListModel(
        imgUrl: 'assets/images/scanner.png',
        h: 16.43.h,
        w: 20.26.w,
        title: 'Scan media'),
  ];
}
