

import '../../domain/entities/Order.dart';

class OrderModel extends Order{

    OrderModel({
        required int idUser,
        required int idRestaurant,
        required List<dynamic> productos,

    }) :super( idUser, idRestaurant, productos);

    factory OrderModel.fromJson(Map<String, dynamic> json){
        return OrderModel(
            idUser: json['IdUser'],
            idRestaurant: json['IdRestaurant'],
            productos: json['productos']
        );
    }
    factory OrderModel.fromEntity(Order order){
        return OrderModel(
            idUser : order.idUser,
            idRestaurant: order.idRestaurant,
            productos : order.productos,
        );
    }
    Map<String, dynamic> toJson(){
        return{
            'idUser': idUser,
            'idRestaurant' : idRestaurant,
            'productos' : productos
        };
    }

    

}