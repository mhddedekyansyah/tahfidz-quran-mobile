import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:tahfidz_quran/api/api_constant.dart';
import 'package:tahfidz_quran/models/info_model.dart';

class InfoRepository {
  Future<InfoModel> getInfo() async {
    try {
      Response response = await Dio().get(ApiConstant.info);
      if (response.statusCode != 200) {
        throw jsonDecode(response.data['message']);
      }
      print(response.data['data']);

      return InfoModel.fromJson(response.data['data']);
    } catch (e) {
      rethrow;
    }
  }
}
