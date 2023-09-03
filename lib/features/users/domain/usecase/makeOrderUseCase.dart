import '../repository/UserRepository.dart';

class makeOrderUseCase {
  final UserRepository restaurantRepository;

  makeOrderUseCase(this.restaurantRepository);

  Future<String> execute() async {
    return await restaurantRepository.postMakeOrder();
  }
}