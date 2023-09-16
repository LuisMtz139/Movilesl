import 'package:myapp/features/products/domain/entities/Product.dart';

import '../repository/ProductoRepository.dart';


class ListProductByRestaurant {
  final ProductoRepository productoRepository;

  ListProductByRestaurant(this.productoRepository);

  Future<List<Product>> execute() async {
    return await productoRepository.getAllProductsByRestaurant();
  }
}