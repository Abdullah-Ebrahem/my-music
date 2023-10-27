import 'package:music/screens/genres/model.dart';

class GenresController {
  List<GenresModel> models = [
    GenresModel(
        imgUrl: 'assets/images/classical.png',
        title: 'Classical',
        songsNumber: 56),
    GenresModel(
        imgUrl: 'assets/images/popp.png', title: 'Pop', songsNumber: 50),
    GenresModel(
        imgUrl: 'assets/images/hip_hop.png', title: 'Hip-Hop', songsNumber: 70),
    GenresModel(
        imgUrl: 'assets/images/rock.png', title: 'Rock', songsNumber: 56),
    GenresModel(
        imgUrl: 'assets/images/soul.png',
        title: 'Soul and R&B',
        songsNumber: 30),
    GenresModel(
        imgUrl: 'assets/images/instrumental.png',
        title: 'Instrumental',
        songsNumber: 125),
    GenresModel(
        imgUrl: 'assets/images/jazz.png', title: 'Jazz', songsNumber: 60),
    GenresModel(
        imgUrl: 'assets/images/country.png',
        title: 'Country Music',
        songsNumber: 56),
  ];
}
