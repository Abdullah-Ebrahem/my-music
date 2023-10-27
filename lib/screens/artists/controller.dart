import 'package:music/screens/artists/model.dart';

class ArtistsController {
  List<String> popupItems = [
    'Play',
    'Play next',
    'Add to playing queue',
    'Add to playlist...',
    'Rename',
    'Tag editor',
    'Go to artist',
    'Delete from device',
    'Share'
  ];
  List<ArtistsModel> models = [
    ArtistsModel(
        imgUrl: 'assets/images/beyonce.png',
        title: 'Beyonce',
        numberOfAlbums: 4,
        numberOfSongs: 38),
    ArtistsModel(
        imgUrl: 'assets/images/bebe.png',
        title: 'Bebe Rexha',
        numberOfAlbums: 2,
        numberOfSongs: 17),
    ArtistsModel(
        imgUrl: 'assets/images/maroon5.png',
        title: 'Maroon 5',
        numberOfAlbums: 5,
        numberOfSongs: 46),
    ArtistsModel(
        imgUrl: 'assets/images/jackson.png',
        title: 'Michael Jackson',
        numberOfAlbums: 10,
        numberOfSongs: 112),
    ArtistsModel(
        imgUrl: 'assets/images/queens.png',
        title: 'Queens',
        numberOfAlbums: 3,
        numberOfSongs: 32),
    ArtistsModel(
        imgUrl: 'assets/images/yanni.png',
        title: 'Yani',
        numberOfAlbums: 1,
        numberOfSongs: 13),
  ];
}
