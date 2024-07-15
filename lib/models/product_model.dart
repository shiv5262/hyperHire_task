class ProductModel {
  String productImage;
  String crownImage;
  String title;
  String detail1;
  String detail2;
  double rating;
  int ratingCount;
  List<String> tags;

  ProductModel({
    required this.title,
    required this.crownImage,
    required this.detail1,
    required this.detail2,
    required this.productImage,
    required this.rating,
    required this.ratingCount,
    required this.tags,
  });
}
