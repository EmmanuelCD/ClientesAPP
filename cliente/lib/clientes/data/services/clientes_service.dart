import 'dart:convert';
import 'package:cliente/clientes/data/models/clientes_models.dart';
import 'package:http/http.dart' as http;
// Asegúrate de importar tu modelo

class ClienteService {
  final String _baseUrl = 'https://jsonplaceholder.typicode.com';

  Future<List<Clientes>> fetchUsers() async {
    final response = await http.get(Uri.parse('$_baseUrl/users'));

    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body);
      return data.map((json) => Clientes.fromJson(json)).toList();
    } else {
      throw Exception('Error al cargar los usuarios');
    }
  }
}
