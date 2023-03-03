// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'distribution_bloc.dart';

abstract class DistributionState extends Equatable {
  const DistributionState();

  @override
  List<Object> get props => [];
}

class DistributionInitial extends DistributionState {}

class DistributionLoaded extends DistributionState {
  final List<DistributionModel> distributions;
  const DistributionLoaded({
    required this.distributions,
  });
}

class DistributionLoading extends DistributionState {}

class DistributionFailed extends DistributionState {
  final String message;
  const DistributionFailed({
    required this.message,
  });
}
