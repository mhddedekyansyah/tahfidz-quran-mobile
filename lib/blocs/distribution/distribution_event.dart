part of 'distribution_bloc.dart';

abstract class DistributionEvent extends Equatable {
  const DistributionEvent();

  @override
  List<Object> get props => [];
}

class GetDistribution extends DistributionEvent {}
