import '../entities/Order.dart';
import '../repository/OrderRepository.dart';

class ListOrderByUser {
  final OrderRepository orderRepository;

  ListOrderByUser(this.orderRepository);

  Future<List<Order>> execute() async {
    return await orderRepository.getAllOrdersByUser();
  }
}