import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:jorday/app/repo/home/model/home_model.dart';

class HomeService {
  static var client = http.Client();

  static Future<String> postLogin(String username, String password) async {
    print("cek login $username $password");
    final response = await http.post(
      Uri.parse('https://itransport.iconpln.co.id/api/?u=login'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'username': username,
        'password' : password,
      }),
    );

    print(response.statusCode);
    print(response.body);

    if (response.statusCode == 200) {

      Get.snackbar("informasi", "Sukses");
      return "login sukses";
    } else {

      Get.snackbar("Informasi", "Username atau password salah");
      return 'error';
    }
  }
}
