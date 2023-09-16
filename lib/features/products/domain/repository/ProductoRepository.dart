import 'package:myapp/features/products/domain/entities/Product.dart';


abstract class ProductoRepository {
  Future<void> postAddProduct(Product);
  Future<void> putUpdateProduct(String productId);
  Future<void> deleteProduct(String productId);

  Future<List<Product>> getAllProductsByRestaurant();

}