import 'package:http/http.dart' as http;
import 'dart:convert';

Future<List<dynamic>> fetchData(String? token) async {
  try {
    final response = await http.get(
      Uri.parse('https://mobil-back-upbu-production.up.railway.app/api/restaurants/list'),
      headers: {
        'Authorization': 'Bearer $token',
      },
    );

    if (response.statusCode == 200) {
      // La solicitud fue exitosa, procesar los datos de la respuesta aquí
      List<dynamic> restaurantes = jsonDecode(response.body);
      return restaurantes;
    } else {
      // La solicitud no fue exitosa, manejar el error aquí
      print('Error en la solicitud: ${response.statusCode}');
      return [];
    }
  } catch (e) {
    print('Error en la solicitud: $e');
    return [];
  }
}
