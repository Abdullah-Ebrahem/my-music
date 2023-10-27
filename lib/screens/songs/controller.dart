import 'package:music/screens/songs/model.dart';

class SongsController {
  List<String> tabs = ['All Songs', 'Playlists', 'Albums', 'Artists', 'Genres'];
  List<SongModel> models = [
    SongModel(
        imgUrl: 'assets/images/1.png',
        title: 'Billie Jean',
        subTitle: 'Michael Jackson'),
    SongModel(
        imgUrl: 'assets/images/2.png',
        title: 'Be the girl',
        subTitle: 'Bebe Rexa'),
    SongModel(
        imgUrl: 'assets/images/3.png',
        title: 'Countryman',
        subTitle: 'Daughtry'),
    SongModel(
        imgUrl: 'assets/images/4.png',
        title: 'Do you feel lonelyness',
        subTitle: 'Marc Anthony'),
    SongModel(
        imgUrl: 'assets/images/5.png',
        title: 'Earth song',
        subTitle: 'Michael Jackson'),
    SongModel(
        imgUrl: 'assets/images/6.png',
        title: 'Smooth criminal',
        subTitle: 'Michael Jackson'),
    SongModel(
        imgUrl: 'assets/images/7.png',
        title: 'The way you make me feel',
        subTitle: 'Michael Jackson'),
    SongModel(
        imgUrl: 'assets/images/8.png',
        title: 'Somebody that I used to know',
        subTitle: 'Gotye'),
    SongModel(
        imgUrl: 'assets/images/9.png',
        title: 'Wild Thoughts',
        subTitle: 'Michael Jackson'),
  ];
}
