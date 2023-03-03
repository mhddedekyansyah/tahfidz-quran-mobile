// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'tahfidz_house_bloc.dart';

abstract class TahfidzHouseState extends Equatable {
  const TahfidzHouseState();

  @override
  List<Object> get props => [];
}

class TahfidzHouseInitial extends TahfidzHouseState {}

class TahfidzHouseLoaded extends TahfidzHouseState {
  final List<TahfidzHouseModel> tahfidzHouses;
  const TahfidzHouseLoaded({
    required this.tahfidzHouses,
  });
}

class TahfidzHouseLoading extends TahfidzHouseState {}

class TahfidzHouseFailed extends TahfidzHouseState {
  final String message;
  const TahfidzHouseFailed({
    required this.message,
  });
}
