import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class API extends GetxController {
  final String baseUrl =
      'http://127.0.0.1:8000/api'; // Replace with your API base URL

  Future<http.Response> get(String endpoint,
      {Map<String, String>? headers}) async {
    final response = await http.get(
      Uri.parse('$baseUrl/$endpoint'),
      headers: headers,
    );
    if (response.statusCode == 200) {
      // Successful response
      return response;
    } else {
      // Handle error response
      throw Exception('Failed to get data: ${response.reasonPhrase}');
    }
  }

  Future<http.Response> post(String endpoint, Map<String, dynamic> data,
      {Map<String, String>? headers}) async {
    final response = await http.post(
      Uri.parse('$baseUrl/$endpoint'),
      headers: {
        'Content-Type': 'application/json',
        ...?headers ?? {}, // Handle nullable headers
      },
      body: jsonEncode(data),
    );

    if (response.statusCode >= 200 && response.statusCode < 300) {
      // Successful response (e.g., 200 OK, 201 Created, etc.)
      return response;
    } else {
      // Handle error response
      throw Exception('Failed to create data: ${response.reasonPhrase}');
    }
  }
}
