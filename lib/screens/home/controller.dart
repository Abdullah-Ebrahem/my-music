import 'package:music/screens/home/model.dart';

class HomeController {
  bool viewAll = false;
  List<HomeModel> hotModels = [
    HomeModel(
        imgUrl: 'assets/images/sky.png',
        title: 'Sound of Sky',
        subTitle: 'Dilon Bruce'),
    HomeModel(
        imgUrl: 'assets/images/girl_on_fire.png',
        title: 'Girl on Fire',
        subTitle: 'Alecia Keys'),
  ];
  List<HomeModel> playListModels = [
    HomeModel(
        imgUrl: 'assets/images/classic.png',
        title: 'Classic Playlist',
        subTitle: 'Piano Guys'),
    HomeModel(
        imgUrl: 'assets/images/summer.png',
        title: 'Summer Playlist',
        subTitle: 'Dilon Bruce'),
    HomeModel(
        imgUrl: 'assets/images/pop.png',
        title: 'Pop Music',
        subTitle: 'Michael Jackson'),
  ];

  List<HomeModel> recentItems = [
    HomeModel(title: 'Billie Jean', subTitle: 'Michael Jackson'),
    HomeModel(title: 'Earth Song', subTitle: 'Michael Jackson'),
    HomeModel(title: 'Mirror', subTitle: 'Justin Timberlake'),
    HomeModel(title: 'Remember the Time', subTitle: 'Michael Jackson'),
  ];
}
