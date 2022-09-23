import 'dart:developer';

import 'package:http/http.dart' as http;
import '../constants.dart';
import '../model/films_model.dart';

class ApiService {
  Future<List<FilmsModel>?> getUsers() async {
    try {
      var url = Uri.parse(ApiConsult.baseUrl + ApiConsult.route);
      var response = await http.get(url);
      if (response.statusCode == 200) {
        List<FilmsModel> model = filmsModelFromJson(response.body);
        return model;
      }
    } catch (e) {
      log(e.toString());
    }
    return null;
  }
}
