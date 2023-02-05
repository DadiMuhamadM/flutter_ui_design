class BrandList {
  String imageUrlBrand;

  BrandList({
    required this.imageUrlBrand,
  });
}

List<BrandList> brandList = [
  BrandList(
    imageUrlBrand: "assets/images/disney.png",
  ),
  BrandList(
    imageUrlBrand: "assets/images/pixar.png",
  ),
  BrandList(
    imageUrlBrand: "assets/images/marvel.png",
  ),
  BrandList(
    imageUrlBrand: "assets/images/starwars.png",
  ),
];
