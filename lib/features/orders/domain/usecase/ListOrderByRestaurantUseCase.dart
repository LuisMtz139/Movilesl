



import '../entities/Order.dart';
import '../repository/OrderRepository.dart';

class ListOrderByRestaurantUseCase {
  final OrderRepository orderRepository;

  ListOrderByRestaurantUseCase(this.orderRepository);

  Future<List<Order>> execute() async {
    return await orderRepository.getAllOrdersByRestaurant();
  }
}