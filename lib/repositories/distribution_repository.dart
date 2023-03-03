import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:tahfidz_quran/api/api_constant.dart';
import 'package:tahfidz_quran/models/models.dart';

class DistributionRepository {
  Future<List<DistributionModel>> getDistribution() async {
    try {
      Response response = await Dio().get(ApiConstant.distributions);
      if (response.statusCode != 200) {
        throw jsonDecode(response.data['message']);
      }

      return List.from(response.data['data'])
          .map(
            (distribution) => DistributionModel.fromJson(distribution),
          )
          .toList();
    } catch (e) {
      rethrow;
    }
  }
}
