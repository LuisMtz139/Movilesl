

import 'package:myapp/features/orders/domain/entities/Order.dart';

import '../repository/OrderRepository.dart';

class MakeOrderUseCase {
  late final OrderRepository orderRepository;


  Future<String> execute(Order order) async {
    return await orderRepository.postMakeOrder(order);
  }
}