import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:music/screens/albums/view.dart';
import 'package:music/screens/artists/view.dart';
import 'package:music/screens/genres/view.dart';
import 'package:music/screens/playlists/view.dart';
import 'package:music/screens/songs/components/all_songs.dart';
import 'package:music/screens/songs/controller.dart';

class SongsScreen extends StatefulWidget {
  const SongsScreen({super.key});

  @override
  State<SongsScreen> createState() => _SongsScreenState();
}

class _SongsScreenState extends State<SongsScreen> {
  final controller = SongsController();
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 0,
          bottom: TabBar(
              indicatorColor: const Color(0xffED8770),
              labelColor: const Color(0xffD9519D),
              unselectedLabelColor: Colors.white.withOpacity(0.8),
              isScrollable: true,
              tabs: List.generate(
                  controller.tabs.length,
                  (index) => Padding(
                        padding: EdgeInsetsDirectional.only(bottom: 5.h),
                        child: Text(
                          controller.tabs[index],
                          style: TextStyle(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ))),
        ),
        body: const TabBarView(children: [
          AllSongsScreen(),
          PLayListsScreen(),
          AlbumsScreen(),
          AtristsScreen(),
          GenresScreen(),
        ]),
      ),
    );
  }
}
