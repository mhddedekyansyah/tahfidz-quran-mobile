// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'models.dart';

class BatchModel extends Equatable {
  final num id;
  final String batch;

  const BatchModel({
    required this.id,
    required this.batch,
  });

  factory BatchModel.fromJson(Map<String, dynamic> json) =>
      BatchModel(id: json['id'], batch: json['batch']);

  @override
  List<Object?> get props => [id, batch];
}
