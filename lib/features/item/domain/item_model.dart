// ignore_for_file: public_member_api_docs, sort_constructors_first
class ItemModel {
  final String name;
  final String image;
  final String category;
  final double price;
 final List<String> subImage;
 final List<String> sizes;
  final String description;
  final List<ReviewModel> reviews;
  ItemModel({
    required this.name,
    required this.image,
    required this.category,
    required this.price,
    required this.subImage,
    required this.sizes,
    required this.description,
    required this.reviews,
  });


}

class ReviewModel {
  final String name;
  final String image;
  final String date;
  final double rating;
  final String review;
  ReviewModel({
    required this.name,
    required this.image,
    required this.date,
    required this.rating,
    required this.review,
  });

}
