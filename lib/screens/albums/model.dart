class AlbumsModel {
  final String imgUrl;
  final String title;
  final String subTitle;
  final int numberOfSongs;
  AlbumsModel(this.title, this.subTitle, this.numberOfSongs,
      {required this.imgUrl});
}
