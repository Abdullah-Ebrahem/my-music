import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:music/core/item_list_model.dart';

class SettingsControler {
  List<ItemListModel> models = [
    ItemListModel(
        title: 'Display',
        h: 15.4.h,
        w: 22.w,
        imgUrl: 'assets/images/display.png'),
    ItemListModel(
        title: 'Audio', h: 15.73.h, w: 22.w, imgUrl: 'assets/images/audio.png'),
    ItemListModel(
        title: 'Headset',
        h: 22.w,
        w: 22.w,
        imgUrl: 'assets/images/headset.png'),
    ItemListModel(
        title: 'Lockscreen',
        h: 24.h,
        w: 18.w,
        imgUrl: 'assets/images/lock.png'),
    ItemListModel(
        title: 'Advanced',
        h: 16.h,
        w: 25.8.w,
        imgUrl: 'assets/images/advanced.png'),
    ItemListModel(
        title: 'Other', h: 22.w, w: 22.w, imgUrl: 'assets/images/settings.png'),
  ];
}
