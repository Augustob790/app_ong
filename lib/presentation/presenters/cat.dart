import 'dart:convert';
import 'package:app_ong/data/constants/constants.dart';
import 'package:app_ong/data/models/models.dart';
import 'package:http/http.dart' as http;
import 'package:app_ong/ui/pages/pages.dart';
import 'package:get/get.dart';

class CatPresentation extends GetxController implements CatPresenter {
  @override
  Future<List<CatModel>> getAllCat() async {
    var url = Uri.parse(ApiRoutes.cat);
    var response = await http.get(url);
    final list = jsonDecode(response.body) as List<dynamic>;

    if (response.statusCode == 200) {
      return list.map((e) => CatModel.fromJson(e)).toList();
    } else {
      throw Exception('Não foi possivel carregar os dados');
    }
  }
}
