import 'dart:convert';

import 'package:myapp/features/users/domain/entities/User.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../users/data/models/user_models.dart';
import '../../domain/entities/Product.dart';
import '../models/ProductModel.dart';



abstract class ProductApiDatasource {
  Future<List<ProductModel>> getAllProductsByRestaurant();
  Future<void> postAddProduct(Product product);
  Future<void> putUpdateProduct(Product product);
  Future<void> deleteProduct(String id);
}

class ProductApiDatasourceImp implements ProductApiDatasource {
  @override
  Future<void> deleteProduct(String id) async {
    await Future.delayed(const Duration(seconds: 2));
    final SharedPreferences sharedPreferences = await SharedPreferences.getInstance();

    String usersString = sharedPreferences.getString('users') ?? "[]";
    List<ProductModel> users = jsonDecode(usersString).map<ProductModel>((data) => ProductModel.fromJson(data)).toList();

    users.removeWhere((item) => item.id == id);
    sharedPreferences.setString('users', jsonEncode(users));
  }

  @override
  Future<List<ProductModel>> getAllProductsByRestaurant() {
    // TODO: implement getAllProductsByRestaurant
    throw UnimplementedError();
  }

  @override
  Future<void> postAddProduct(Product product) async {
      await Future.delayed(const Duration(seconds: 2));
      final SharedPreferences sharedPreferences = await SharedPreferences.getInstance();

      String productsString = sharedPreferences.getString('product') ?? "[]";
      List<UserModel> product = jsonDecode(productsString).map<UserModel>((data) => UserModel.fromJson(data)).toList();

      product.add(UserModel.fromEntity(product as User));
      sharedPreferences.setString('product', jsonEncode(product));
    }



  @override
  Future<void> putUpdateProduct(Product product) async {
    await Future.delayed(const Duration(seconds: 2));
    final SharedPreferences sharedPreferences = await SharedPreferences.getInstance();

    String productsString = sharedPreferences.getString('product') ?? "[]";
    List<ProductModel> productModel = jsonDecode(productsString).map<ProductModel>((data) => ProductModel.fromJson(data)).toList();

    productModel.removeWhere((item) => item.id == product.id);
    productModel.add(UserModel.fromEntity(product as User) as ProductModel);
    sharedPreferences.setString('product', jsonEncode(product));
  }

}