class FilmList {
  String imageUrlFilmList;
  String textJudulFilm;

  FilmList({required this.imageUrlFilmList, required this.textJudulFilm});
}

List<FilmList> filmList = [
  FilmList(
    imageUrlFilmList: "assets/images/lego.png",
    textJudulFilm: "Lego Star Wars Terrifying Tal",
  ),
  FilmList(
    imageUrlFilmList: "assets/images/film5.png",
    textJudulFilm: "Jungle Cruise",
  ),
  FilmList(
    imageUrlFilmList: "assets/images/frozen.png",
    textJudulFilm: "Frozen 2",
  ),
];
