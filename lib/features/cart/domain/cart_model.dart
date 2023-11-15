class CartModel{
  final String image;
  final String name;
  final String shopName;
  final double price;
  final int quantity;
  final bool pressed;

  CartModel({required this.image, required this.name, required this.shopName, required this.price, required this.quantity, required this.pressed});
}