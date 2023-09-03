

import 'package:myapp/features/products/domain/entities/Product.dart';
import 'package:myapp/features/products/domain/repository/ProductoRepository.dart';

class DeleteProductUsecase {
  final ProductoRepository postRepository;

  DeleteProductUsecase(this.postRepository);

  Future<void> execute(String productId) async {
    try {
      await postRepository.deleteProduct(productId);
    } catch (e) {
      throw e;
    }
  }
}
