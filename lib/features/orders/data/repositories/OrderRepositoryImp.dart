

import 'package:myapp/features/orders/domain/entities/Order.dart';
import 'package:myapp/features/orders/domain/repository/OrderRepository.dart';

class OrderRepositoryImp extends OrderRepository{
  @override
  Future<List<Order>> getAllOrdersByRestaurant() {
    // TODO: implement getAllOrdersByRestaurant
    throw UnimplementedError();
  }

  @override
  Future<List<Order>> getAllOrdersByUser() {
    // TODO: implement getAllOrdersByUser
    throw UnimplementedError();
  }

  @override
  Future<String> postMakeOrder(Order order) {
    // TODO: implement postMakeOrder
    throw UnimplementedError();
  }

}