import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:music/core/item_list.dart';
import 'package:music/screens/master/components/item_drawer.dart';
import 'package:music/screens/master/controller.dart';

class MasterScreen extends StatefulWidget {
  const MasterScreen({super.key});

  @override
  State<MasterScreen> createState() => _MasterScreenState();
}

class _MasterScreenState extends State<MasterScreen> {
  final controller = MasterController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(builder: (context) {
          return GestureDetector(
            onTap: () {
              Scaffold.of(context).openDrawer();
            },
            child: Image.asset(
              'assets/images/drawer.png',
              cacheHeight: 16,
              cacheWidth: 25,
            ),
          );
        }),
        title: controller.title[controller.currentIndex],
        centerTitle: true,
        actions: controller.currentIndex == 1
            ? [IconButton(onPressed: () {}, icon: const Icon(Icons.search))]
            : null,
      ),
      drawer: Drawer(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: 313.w,
              height: 211.h,
              padding: EdgeInsetsDirectional.only(top: 27.h),
              color: Colors.white.withOpacity(0.2),
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/splash.png',
                    width: 67.8.w,
                    height: 74.67.h,
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    'Music',
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: Colors.white.withOpacity(0.8)),
                  ),
                  SizedBox(
                    height: 26.h,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ItemDrawer(number: '328', title: 'Songs'),
                      ItemDrawer(number: '52', title: 'Albums'),
                      ItemDrawer(number: '87', title: 'Artists'),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 23.h,
            ),
            Column(
              children: List.generate(controller.models.length,
                  (index) => ItemList(model: controller.models[index])),
            )
          ],
        ),
      )),
      body: controller.screens[controller.currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          iconSize: 25.w,
          selectedItemColor: const Color(0xffED8770),
          unselectedItemColor: const Color(0xff63666E),
          backgroundColor: const Color(0xff151827),
          currentIndex: controller.currentIndex,
          onTap: (value) {
            controller.currentIndex = value;
            setState(() {});
          },
          items: List.generate(
            controller.bottomLabels.length,
            (index) => BottomNavigationBarItem(
                icon: index == 2
                    ? const Icon(Icons.settings)
                    : Image.asset(
                        'assets/images/${controller.bottomIcons[index]}.png',
                        width: 20.w,
                        height: 20.w,
                        color: index == controller.currentIndex
                            ? const Color(0xffED8770)
                            : const Color(0xff63666E),
                      ),
                label: controller.bottomLabels[index]),
          )),
    );
  }
}
