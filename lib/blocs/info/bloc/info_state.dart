part of 'info_bloc.dart';

abstract class InfoState extends Equatable {
  const InfoState();

  @override
  List<Object> get props => [];
}

class InfoInitial extends InfoState {}

class InfoLoading extends InfoState {}

class InfoLoaded extends InfoState {
  final InfoModel info;
  const InfoLoaded(this.info);
}

class InfoFailed extends InfoState {
  final String msg;
  const InfoFailed(this.msg);
}
