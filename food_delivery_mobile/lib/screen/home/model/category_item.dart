class CategoryItem {
  String imageUrlCategoryItem;
  String textCategoryItem;

  CategoryItem(
      {required this.imageUrlCategoryItem, required this.textCategoryItem});
}

List<CategoryItem> categoryItem = [
  CategoryItem(
    imageUrlCategoryItem: "assets/images/roti.png",
    textCategoryItem: "Main",
  ),
  CategoryItem(
    imageUrlCategoryItem: "assets/images/mie.png",
    textCategoryItem: "Soups",
  ),
  CategoryItem(
    imageUrlCategoryItem: "assets/images/sayur.png",
    textCategoryItem: "Salads",
  ),
  CategoryItem(
    imageUrlCategoryItem: "assets/images/drink.png",
    textCategoryItem: "Drinks",
  )
];
