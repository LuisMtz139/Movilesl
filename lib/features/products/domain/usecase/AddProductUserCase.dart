import 'package:myapp/features/products/domain/entities/Product.dart';

import '../repository/ProductoRepository.dart';

class AddProductUserCase {
  final ProductoRepository productoRepository;

  AddProductUserCase(this.productoRepository);

  Future<String> execute() async {
    return await productoRepository.postAddProduct(Product);
  }
}