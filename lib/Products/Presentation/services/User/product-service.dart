import 'package:http/http.dart' as http;
import 'package:myapp/Products/Presentation/services/User/serviceInicio.dart';
import 'dart:convert';


class ProductService {
  static Future<List<dynamic>> fetchProducts(int selectedRestaurantId) async {
    try {
      // Obtener el token almacenado
      String? token = ServiceInicio.getToken();

      if (token != null) {
        String url = 'https://mobil-back-upbu-production.up.railway.app/restaurant/$selectedRestaurantId/products';

        // Agregar el token de autorización en el encabezado de la solicitud
        Map<String, String> headers = {
          'Authorization': 'Bearer $token',
        };

        http.Response response = await http.get(Uri.parse(url), headers: headers);

        if (response.statusCode == 200) {
          List<dynamic> data = json.decode(response.body);
          return data;
        } else {
          print('Error en la solicitud HTTP: ${response.statusCode}');
          return [];
        }
      } else {
        print('Error: No se pudo obtener el token.');
        return [];
      }
    } catch (e) {
      print('Error en la solicitud HTTP: $e');
      return [];
    }
  }
}
