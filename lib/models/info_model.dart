// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class InfoModel extends Equatable {
  final int id;
  final String info;

  const InfoModel({
    required this.id,
    required this.info,
  });

  factory InfoModel.fromJson(Map<String, dynamic> json) {
    return InfoModel(id: json['id'], info: json['info']);
  }

  @override
  List<Object?> get props => [id, info];
}
