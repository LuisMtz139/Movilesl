import 'package:http/http.dart' as http;
import 'dart:convert';

class ServiceInicio {
  static String? _token; // Variable estática para almacenar el token

  static Future<bool> login(String email, String password) async {
    final String url = 'https://mobil-back-upbu-production.up.railway.app/login/user';

    try {
      final response = await http.post(
        Uri.parse(url),
        headers: <String, String>{
          'Content-Type': 'application/x-www-form-urlencoded',
        },
        body: <String, String>{
          'email': email,
          'password': password,
        },
      );

      print('Response Status Code: ${response.statusCode}');
      print('Response Body: ${response.body}');

      if (response.statusCode == 200) {
        // La solicitud fue exitosa, inicio de sesión correcto.
        // Obtener el token de la respuesta y guardarlo en la variable estática
        final Map<String, dynamic> responseData = json.decode(response.body);
        _token = responseData['encode_token'];
        return true;
      } else {
        // La solicitud no fue exitosa, inicio de sesión incorrecto.
        return false;
      }
    } catch (e) {
      // Si ocurre un error durante la solicitud, muestra el mensaje de error por consola
      print('Error en la solicitud: $e');
      return false;
    }
  }

  static String? getToken() {
    return _token; // Devolver el valor del token almacenado
  }
}

void main() async {
  // Realizar el inicio de sesión y guardar el token
  bool loginSuccess = await ServiceInicio.login('tu_email', 'tu_password');

  if (loginSuccess) {
    // Obtener el token almacenado
    String? token = ServiceInicio.getToken();

    if (token != null) {
      // Ahora puedes usar el token en otras partes de tu aplicación
      // ... Hacer algo con el token ...
      print('Token: $token');
    } else {
      print('Error: No se pudo obtener el token.');
    }
  } else {
    print('Error: Inicio de sesión fallido.');
  }
}
