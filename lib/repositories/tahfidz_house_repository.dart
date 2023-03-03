import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:tahfidz_quran/api/api_constant.dart';
import 'package:tahfidz_quran/models/models.dart';

class TahfidzHouseRepository {
  Future<List<TahfidzHouseModel>> getTahfidzHouse() async {
    try {
      Response response = await Dio().get(ApiConstant.tahfidzHouse);
      if (response.statusCode != 200) {
        throw jsonDecode(response.data['message']);
      }

      return List.from(response.data['data'])
          .map(
            (tahfidzhouse) => TahfidzHouseModel.fromJson(tahfidzhouse),
          )
          .toList();
    } catch (e) {
      rethrow;
    }
  }
}
