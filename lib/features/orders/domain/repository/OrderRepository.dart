import '../entities/Order.dart';

abstract class OrderRepository {
  Future<String> postMakeOrder(Order order);
  Future<List<Order>> getAllOrdersByUser();
  Future<List<Order>> getAllOrdersByRestaurant();
}