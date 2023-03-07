part of 'models.dart';

class DistributionModel extends Equatable {
  final num id;
  final BatchModel batch;
  final TahfidzHouseModel tahfidzHouse;
  final dynamic totalRice;
  final String imageUrl;

  const DistributionModel({
    required this.id,
    required this.batch,
    required this.tahfidzHouse,
    required this.totalRice,
    required this.imageUrl,
  });

  factory DistributionModel.fromJson(Map<String, dynamic> json) =>
      DistributionModel(
        id: json['id'],
        batch: BatchModel.fromJson(json['batch']),
        tahfidzHouse: TahfidzHouseModel.fromJson(json['tahfidz_house']),
        totalRice: json['total_rice'],
        imageUrl: json['image_url'],
      );

  @override
  List<Object?> get props => [id, batch, tahfidzHouse, totalRice, imageUrl];
}
