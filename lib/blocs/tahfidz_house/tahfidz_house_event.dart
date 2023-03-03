part of 'tahfidz_house_bloc.dart';

abstract class TahfidzHouseEvent extends Equatable {
  const TahfidzHouseEvent();

  @override
  List<Object> get props => [];
}

class GetTahfidzHouse extends TahfidzHouseEvent {}
