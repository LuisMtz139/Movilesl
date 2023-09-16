import 'dart:convert';
import 'package:myapp/features/orders/data/models/OrdersModel.dart';
import 'package:myapp/features/orders/domain/entities/Order.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;




abstract class OrderApiDataSource{
    Future <List<OrderModel>> getAllOrdersByRestaurant();
    Future <List<OrderModel>> getAllOrdersByUser();
    Future <void> postMakeOrder(Order order);
}

class OrderApiDataSourceImp implements OrderApiDataSource {
    @override
    Future<List<OrderModel>> getAllOrdersByRestaurant() async {
         throw UnimplementedError();
    }

    @override
    Future<List<OrderModel>> getAllOrdersByUser() async {
         throw UnimplementedError();
    }

    @override
    Future<void> postMakeOrder(Order order) async {
         throw UnimplementedError();
    }

}

