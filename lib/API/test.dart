import 'package:e232/API/API.dart';
import 'package:e232/API/Model/userModel.dart';

import 'dart:convert';

import 'package:get/get_rx/src/rx_types/rx_types.dart';

class DATA {
  final API api = API();
// Observable to store the user data
  var userData = Rx<UserData?>(null);
  Future<void> fetchData() async {
    try {
      final response = await api.post('/your-endpoint', {
        'email': 'teacher@example.com', // Add your request parameters here
        'password': '55555555',
        ' password_confirmation': '55555555',
      });

      if (response.statusCode == 200) {
        final Map<String, dynamic> responseData = jsonDecode(response.body);

        if (responseData['status'] == 1) {
          final data = UserData.fromJson(responseData['data']);
          userData.value = data; // Store the data in the observable
          print('Data fetched successfully');
        } else {
          print('Error: Status is not 1');
        }
      } else {
        print(
            'Error: Failed to fetch data with status code ${response.statusCode}');
      }
    } catch (e) {
      print('Exception: $e');
    }
  }
}
