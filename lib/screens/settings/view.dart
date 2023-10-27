import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:music/core/item_list.dart';
import 'package:music/screens/settings/controller.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  final controller = SettingsControler();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        padding: EdgeInsetsDirectional.only(top: 56.h),
        itemCount: controller.models.length,
        itemBuilder: (context, index) =>
            ItemList(model: controller.models[index]),
      ),
    );
  }
}
