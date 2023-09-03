import '../../../../Products/Presentation/usuarios-compradores/listaProducts.dart';
import '../repository/ProductoRepository.dart';

class UpdateProductUserCase {
  final ProductoRepository productoRepository;

  UpdateProductUserCase(this.productoRepository);

  Future<String> execute() async {
    return await productoRepository.putUpdateProduct(Product as String);
  }
}