import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:music/core/item_list_model.dart';

class ItemList extends StatelessWidget {
  final ItemListModel model;
  const ItemList({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: Image.asset(
          model.imgUrl,
          width: model.w,
          height: model.h,
          fit: BoxFit.fill,
        ),
        title: Padding(
          padding: EdgeInsets.only(bottom: 9.5.h),
          child: Text(
            model.title,
            style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
                color: Colors.white.withOpacity(0.9)),
          ),
        ),
        subtitle: Divider(
          color: Colors.white.withOpacity(0.07),
          thickness: 1.h,
        ));
  }
}
