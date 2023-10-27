import 'package:music/screens/playlists/model.dart';

class PlaylistsController {
  List<PlaylistsModel> myPlaylists = [
    PlaylistsModel(
        imgUrl: 'assets/images/queens_colle.png', title: 'Queens Colle..'),
    PlaylistsModel(
        imgUrl: 'assets/images/rihana_colle.png', title: 'Rihanna Coll..'),
    PlaylistsModel(imgUrl: 'assets/images/mj.png', title: 'MJ Collection'),
    PlaylistsModel(
        imgUrl: 'assets/images/classic_collection.png',
        title: 'Classical Collection'),
  ];
  List<PlaylistsModel> models = [
    PlaylistsModel(
        imgUrl: 'assets/images/top.png',
        title: 'My Top Tracks',
        numberOfSongs: 100),
    PlaylistsModel(
        imgUrl: 'assets/images/latest.png',
        title: 'Latest Added',
        numberOfSongs: 323),
    PlaylistsModel(
        imgUrl: 'assets/images/history_tracks.png',
        title: 'History',
        numberOfSongs: 450),
    PlaylistsModel(
        imgUrl: 'assets/images/favourites.png',
        title: 'Favourites',
        numberOfSongs: 966),
  ];
}
