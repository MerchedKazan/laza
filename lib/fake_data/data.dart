import 'package:test_appeorem/features/cart/domain/cart_model.dart';
import 'package:test_appeorem/features/home/domain/brand_model.dart';
import 'package:test_appeorem/features/item/domain/item_model.dart';

List<BrandModel> fakeBrandList=[
  BrandModel(name: "Addidas", imageAsset: "assets/brand/adidas.svg"),
  BrandModel(name: "Fila", imageAsset: "assets/brand/fila.svg"),
  BrandModel(name: "Nike", imageAsset: "assets/brand/nike.svg"),
  BrandModel(name: "Puma", imageAsset: "assets/brand/puma.svg"),
];
List<CartModel> fakeCartItemList=[
  CartModel(image: "assets/cart/cart_1.png", name: "Men's Tie-Dye T-Shirt", shopName: "Nike Sportswear", price: 45, quantity: 1, pressed: false),
  CartModel(image: "assets/cart/cart_2.png", name: "Men's Tie-Dye T-Shirt", shopName: "Nike Sportswear", price: 45, quantity: 1, pressed: true),
];
List<ItemModel> fakeItemList=[
  ItemModel(name: "Nike Club Fleece",image: "assets/card/first_card.png", category: "Men's Printed Pullover Hoodie", price: 120, subImage: [
    "assets/card/first_card.png",
    "assets/card/first_card.png",
    "assets/card/first_card.png",
    "assets/card/first_card.png",
    "assets/card/first_card.png",
    "assets/card/first_card.png",
    "assets/card/first_card.png",
    "assets/card/first_card.png",
  ], sizes: [
    "S",
    "M",
    "L",
    "XL",
    "2XL"
  ], description: "The Nike Throwback Pullover Hoodie is made from premium French terry fabric that blends a performance feel withThe Nike Throwback Pullover Hoodie is made from premium French terry fabric that blends a performance feel with",
   reviews: [
    ReviewModel(name: "Ronald Richards", image: "assets/card/first_card.png", date: "13 Sep, 2020", rating: 4.8, review: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque malesuada eget vitae amet..."),
    ReviewModel(name: "Ronald Richards", image: "assets/card/first_card.png", date: "13 Sep, 2020", rating: 4.8, review: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque malesuada eget vitae amet..."),
    ReviewModel(name: "Ronald Richards", image: "assets/card/first_card.png", date: "13 Sep, 2020", rating: 4.8, review: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque malesuada eget vitae amet..."),
    ReviewModel(name: "Ronald Richards", image: "assets/card/first_card.png", date: "13 Sep, 2020", rating: 4.8, review: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque malesuada eget vitae amet..."),
    ReviewModel(name: "Ronald Richards", image: "assets/card/first_card.png", date: "13 Sep, 2020", rating: 4.8, review: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque malesuada eget vitae amet..."),
    ReviewModel(name: "Ronald Richards", image: "assets/card/first_card.png", date: "13 Sep, 2020", rating: 4.8, review: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque malesuada eget vitae amet..."),
   ]),
  ItemModel(name: "Trail Running Jacket Nike Windrunner",image: "assets/card/second_card.png", category: "Men's Printed Pullover Hoodie", price: 150, subImage: [
    "assets/card/second_card.png",
    "assets/card/second_card.png",
    "assets/card/second_card.png",
    "assets/card/second_card.png",
  ], sizes: [
    "S",
    "M",
    "L",
    "XL",
    "2XL"
  ], description: "The Nike Throwback Pullover Hoodie is made from premium French terry fabric that blends a performance feel withThe Nike Throwback Pullover Hoodie is made from premium French terry fabric that blends a performance feel with",
   reviews:[
    ReviewModel(name: "Ronald Richards", image: "assets/card/first_card.png", date: "13 Sep, 2020", rating: 4.8, review: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque malesuada eget vitae amet..."),
    ReviewModel(name: "Ronald Richards", image: "assets/card/first_card.png", date: "13 Sep, 2020", rating: 4.8, review: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque malesuada eget vitae amet..."),
    ReviewModel(name: "Ronald Richards", image: "assets/card/first_card.png", date: "13 Sep, 2020", rating: 4.8, review: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque malesuada eget vitae amet..."),
    ReviewModel(name: "Ronald Richards", image: "assets/card/first_card.png", date: "13 Sep, 2020", rating: 4.8, review: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque malesuada eget vitae amet..."),
    ReviewModel(name: "Ronald Richards", image: "assets/card/first_card.png", date: "13 Sep, 2020", rating: 4.8, review: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque malesuada eget vitae amet..."),
    ReviewModel(name: "Ronald Richards", image: "assets/card/first_card.png", date: "13 Sep, 2020", rating: 4.8, review: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque malesuada eget vitae amet..."),
   ]),
  ItemModel(name: "Nike Sportswear Club Fleece",image:"assets/card/third_card.png" , category: "Men's Printed Pullover Hoodie", price: 99, subImage: [
    "assets/card/third_card.png",
    "assets/card/third_card.png",
    "assets/card/third_card.png",
    "assets/card/third_card.png",
  ], sizes: [
    "S",
    "M",
    "L",
    "XL",
    "2XL"
  ], description: "The Nike Throwback Pullover Hoodie is made from premium French terry fabric that blends a performance feel withThe Nike Throwback Pullover Hoodie is made from premium French terry fabric that blends a performance feel with",
   reviews:[
    ReviewModel(name: "Ronald Richards", image: "assets/card/first_card.png", date: "13 Sep, 2020", rating: 4.8, review: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque malesuada eget vitae amet..."),
    ReviewModel(name: "Ronald Richards", image: "assets/card/first_card.png", date: "13 Sep, 2020", rating: 4.8, review: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque malesuada eget vitae amet..."),
    ReviewModel(name: "Ronald Richards", image: "assets/card/first_card.png", date: "13 Sep, 2020", rating: 4.8, review: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque malesuada eget vitae amet..."),
    ReviewModel(name: "Ronald Richards", image: "assets/card/first_card.png", date: "13 Sep, 2020", rating: 4.8, review: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque malesuada eget vitae amet..."),
    ReviewModel(name: "Ronald Richards", image: "assets/card/first_card.png", date: "13 Sep, 2020", rating: 4.8, review: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque malesuada eget vitae amet..."),
    ReviewModel(name: "Ronald Richards", image: "assets/card/first_card.png", date: "13 Sep, 2020", rating: 4.8, review: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque malesuada eget vitae amet..."),
   ]),
  ItemModel(name: "Nike Club Fleece",image: "assets/card/forth_card.png", category: "Men's Printed Pullover Hoodie", price: 120, subImage: [
   "assets/card/forth_card.png",
   "assets/card/forth_card.png",
   "assets/card/forth_card.png",
   "assets/card/forth_card.png",
  ], sizes: [
    "S",
    "M",
    "L",
    "XL",
    "2XL"
  ], description: "The Nike Throwback Pullover Hoodie is made from premium French terry fabric that blends a performance feel withThe Nike Throwback Pullover Hoodie is made from premium French terry fabric that blends a performance feel with",
   reviews:[
    ReviewModel(name: "Ronald Richards", image: "assets/card/first_card.png", date: "13 Sep, 2020", rating: 4.8, review: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque malesuada eget vitae amet..."),
    ReviewModel(name: "Ronald Richards", image: "assets/card/first_card.png", date: "13 Sep, 2020", rating: 4.8, review: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque malesuada eget vitae amet..."),
    ReviewModel(name: "Ronald Richards", image: "assets/card/first_card.png", date: "13 Sep, 2020", rating: 4.8, review: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque malesuada eget vitae amet..."),
    ReviewModel(name: "Ronald Richards", image: "assets/card/first_card.png", date: "13 Sep, 2020", rating: 4.8, review: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque malesuada eget vitae amet..."),
    ReviewModel(name: "Ronald Richards", image: "assets/card/first_card.png", date: "13 Sep, 2020", rating: 4.8, review: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque malesuada eget vitae amet..."),
    ReviewModel(name: "Ronald Richards", image: "assets/card/first_card.png", date: "13 Sep, 2020", rating: 4.8, review: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque malesuada eget vitae amet..."),
    ReviewModel(name: "Ronald Richards", image: "assets/card/first_card.png", date: "13 Sep, 2020", rating: 4.8, review: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque malesuada eget vitae amet..."),
    ReviewModel(name: "Ronald Richards", image: "assets/card/first_card.png", date: "13 Sep, 2020", rating: 4.8, review: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque malesuada eget vitae amet..."),
    ReviewModel(name: "Ronald Richards", image: "assets/card/first_card.png", date: "13 Sep, 2020", rating: 4.8, review: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque malesuada eget vitae amet..."),
    ReviewModel(name: "Ronald Richards", image: "assets/card/first_card.png", date: "13 Sep, 2020", rating: 4.8, review: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque malesuada eget vitae amet..."),
    ReviewModel(name: "Ronald Richards", image: "assets/card/first_card.png", date: "13 Sep, 2020", rating: 4.8, review: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque malesuada eget vitae amet..."),
   ]),
];