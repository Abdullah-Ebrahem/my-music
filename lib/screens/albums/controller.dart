import 'package:music/screens/albums/model.dart';

class AlbumsController {
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
  List<AlbumsModel> models = [
    AlbumsModel('History', 'Michael Jackson', 11,
        imgUrl: 'assets/images/history.png'),
    AlbumsModel('Thriller', 'Michael Jackson', 27,
        imgUrl: 'assets/images/thriller.png'),
    AlbumsModel("It Won't Be Soon. . ", 'Maroon 5', 25,
        imgUrl: 'assets/images/maroon.png'),
    AlbumsModel('I Am... Yours', 'Beyonce', 20,
        imgUrl: 'assets/images/yours.png'),
    AlbumsModel('History', 'Michael Jackson', 11,
        imgUrl: 'assets/images/rihana.png'),
    AlbumsModel('History', 'Michael Jackson', 11,
        imgUrl: 'assets/images/q.png'),
  ];
}
