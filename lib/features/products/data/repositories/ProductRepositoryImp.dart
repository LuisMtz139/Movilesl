import 'package:myapp/features/products/domain/entities/Product.dart';
import 'package:myapp/features/products/domain/repository/ProductoRepository.dart';

class ProductRepositoryImp implements ProductoRepository{

  @override
  Future<void> deleteProduct(String productId) {
    // TODO: implement deleteProduct
    throw UnimplementedError();
  }

  @override
  Future<List<Product>> getAllProductsByRestaurant() {
    // TODO: implement getAllProductsByRestaurant
    throw UnimplementedError();
  }

  @override
  Future<void> postAddProduct(Product) {
    // TODO: implement postAddProduct
    throw UnimplementedError();
  }

  @override
  Future<void> putUpdateProduct(String productId) {
    // TODO: implement putUpdateProduct
    throw UnimplementedError();
  }

}