import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:music/screens/playlists/components/item_my_playlist.dart';
import 'package:music/screens/playlists/controller.dart';

class PLayListsScreen extends StatefulWidget {
  const PLayListsScreen({super.key});

  @override
  State<PLayListsScreen> createState() => _PLayListsScreenState();
}

class _PLayListsScreenState extends State<PLayListsScreen> {
  final controller = PlaylistsController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          GridView.builder(
            padding: EdgeInsetsDirectional.only(top: 22.h, bottom: 36.h),
            shrinkWrap: true,
            itemCount: 4,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 128.h, crossAxisCount: 2),
            itemBuilder: (context, index) => Container(
              height: 128.h,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(controller.models[index].imgUrl),
                    fit: BoxFit.fill),
              ),
              child: Align(
                alignment: AlignmentDirectional.bottomCenter,
                child: ListTile(
                  title: Text(
                    controller.models[index].title,
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xffEEEEEE)),
                  ),
                  subtitle: Text(
                    '${controller.models[index].numberOfSongs} Songs',
                    style: TextStyle(
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xffC1C0C0)),
                  ),
                  trailing: CircleAvatar(
                    radius: 15.r,
                    backgroundColor: const Color(0xffDBDBDB),
                    child: const Icon(
                      Icons.play_arrow_rounded,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
          ),
          ExpansionTile(
            title: Text(
              'My Playlists',
              style: TextStyle(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w400,
                  color: Colors.white.withOpacity(0.8)),
            ),
            trailing: Text(
              'View All',
              style: TextStyle(
                  fontSize: 11.sp,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xffED8770)),
            ),
          ),
          SingleChildScrollView(
            padding: EdgeInsetsDirectional.only(start: 15.w),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                  4,
                  (index) => ItemMyPlaylist(
                        model: controller.myPlaylists[index],
                      )),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color(0xff23273B),
        child: Icon(
          Icons.add,
          size: 22.w,
          color: const Color(0xffED8770),
        ),
      ),
    );
  }
}
