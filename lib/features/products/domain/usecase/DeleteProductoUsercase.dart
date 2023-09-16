

import 'package:myapp/features/products/domain/entities/Product.dart';
import 'package:myapp/features/products/domain/repository/ProductoRepository.dart';

class DeleteProductUsecase {
  final ProductoRepository productRepository;

  DeleteProductUsecase(this.productRepository);

  Future<void> execute(String productId) async {
    try {
      await productRepository.deleteProduct(productId);
    } catch (e) {
      throw e;
    }
  }
}
