

import 'package:myapp/features/users/domain/entities/Restaurant.dart';

class RestaurantModel extends  Restaurant{
  RestaurantModel({
    required int id,
    required String name,
    required String email,
    required String password,
    required String nameRestaurant,
    required String description,
    required String adress,
    required String url_image,
   

  }):super(id,name,email,password,nameRestaurant,description,adress,url_image);

  factory RestaurantModel.fromJson(Map<String, dynamic>json){
    return RestaurantModel(
      id : json['id'],
      name : json['name'],
      email : json['email'],
      password : json['password'],
      nameRestaurant : json['nameRestaurant'],
      description : json['description'],
      adress : json['adress'],
      url_image : json['url_image'],
    );
  }

  factory RestaurantModel.fromEntity(Restaurant restaurant){
    return RestaurantModel(
        id: restaurant.id,
        name: restaurant.name,
        email: restaurant.email,
        password: restaurant.password,
        nameRestaurant: restaurant.nameRestaurant,
        description: restaurant.description,
        adress: restaurant.adress,
        url_image: restaurant.url_image);
  }
}