import 'package:myapp/features/products/domain/entities/Product.dart';
import '../repository/ProductoRepository.dart';

class UpdateProductUserCase {
  final ProductoRepository productoRepository;

  UpdateProductUserCase(this.productoRepository);

  Future<void> execute() async {
    return await productoRepository.putUpdateProduct(Product as String);
  }
}