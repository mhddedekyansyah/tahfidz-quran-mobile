// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'models.dart';

class TahfidzHouseModel extends Equatable {
  final num id;
  final String name;
  final String address;
  final String contact;
  final dynamic totalSantri;
  final dynamic totalSantriYatim;
  final dynamic totalSantriDhuafa;

  const TahfidzHouseModel({
    required this.id,
    required this.name,
    required this.address,
    required this.contact,
    required this.totalSantri,
    required this.totalSantriYatim,
    required this.totalSantriDhuafa,
  });

  factory TahfidzHouseModel.fromJson(Map<String, dynamic> json) =>
      TahfidzHouseModel(
          id: json['id'],
          name: json['name'],
          address: json['address'],
          contact: json['contact'],
          totalSantri: json['total_santri'],
          totalSantriYatim: json['total_santri_yatim'],
          totalSantriDhuafa: json['total_santri_dhuafa']);

  @override
  List<Object?> get props => [
        id,
        name,
        address,
        contact,
        totalSantri,
        totalSantriYatim,
        totalSantriDhuafa
      ];
}
