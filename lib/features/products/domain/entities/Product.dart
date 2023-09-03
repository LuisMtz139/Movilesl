class Product{
  final int id;
  final String name;
  final String description;
  final String price;
  final String urlImage;
  final String restaurantId;

  Product( {
    required this.name,
    required this.id,
    required this.description,
    required this.price,
    required this.urlImage,
    required this.restaurantId,
  });
}
