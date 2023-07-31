import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';

import 'IniciarSesion.dart';

void main() {
  runApp(Hola());
}

class Hola extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProductListView(),
    );
  }
}

class Product {
  final int id;
  final String name;
  final String description;
  final double price;
  final String imageUrl;

  Product({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.imageUrl,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      price: json['price'].toDouble(),
      imageUrl: json['image_url'],
    );
  }
}

class ProductListView extends StatefulWidget {
  @override
  _ProductListViewState createState() => _ProductListViewState();
}

class _ProductListViewState extends State<ProductListView> {
  List<Product> products = [];

  @override
  void initState() {
    super.initState();
    _fetchProducts();
  }

  Future<void> _fetchProducts() async {
    try {
      // Acceder al UserState para obtener el token almacenado
      String encodedToken = Provider.of<UserState>(context, listen: false).encodedToken;
      String token = jsonDecode(encodedToken)['encode_token'];

      final response = await http.get(
        Uri.parse('https://mobil-back-upbu-production.up.railway.app/restaurant/1/products'),
        headers: {
          'Authorization': 'Bearer $token', // Agregar el token al encabezado de la solicitud
        },
      );

      if (response.statusCode == 200) {
        final List<dynamic> jsonResponse = json.decode(response.body);
        setState(() {
          products = jsonResponse.map((data) => Product.fromJson(data)).toList();
        });
      } else {
        // Imprimir el mensaje de error en la consola
        print('Failed to load products (${response.statusCode})');
        print('Error message: ${response.body}');
      }
    } catch (e) {
      // Imprimir el mensaje de error en la consola si se produce una excepción
      print('Error: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product List'),
        backgroundColor: Color(0xff2e2e2e), // Color de fondo del AppBar
      ),
      backgroundColor: Color(0xff2e2e2e),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return Card(
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: ListTile(
              title: Text(product.name),
              subtitle: Text(product.description),
              trailing: Text('${product.price} \$'),
              leading: Image.network(product.imageUrl),
            ),

          );
        },
      ),
    );
  }
}

// Resto del código de UserState y las clases restantes...
