
import '../../domain/entities/Product.dart';

class ProductModel extends Product {


  ProductModel({
    required int id,
    required String description,
    required int price,
    required int idRestaurant,
    required String urlImage,
  }) : super(id, description, price, idRestaurant, urlImage);



  factory ProductModel.fromJson(Map<String, dynamic> json){
    return ProductModel(
      id: json['id'], 
      description: json['description'], 
      price: json['price'],
      idRestaurant: json['idRestaurant'], 
      urlImage: json['urlImage']
      );
  }
  factory ProductModel.fromEntity(Product product) {
    return ProductModel(
      id: product.id,
      description: product.description,
      price: product.price,
      idRestaurant: product.idRestaurant,
      urlImage: product.urlImage
      );
  }
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'description': description,
      'price': price,
      'idRestaurant': idRestaurant,
      'urlImage': urlImage
    };
  }

}