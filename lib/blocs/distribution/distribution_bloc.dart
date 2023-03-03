import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:tahfidz_quran/models/models.dart';
import 'package:tahfidz_quran/repositories/distribution_repository.dart';

part 'distribution_event.dart';
part 'distribution_state.dart';

class DistributionBloc extends Bloc<DistributionEvent, DistributionState> {
  final DistributionRepository _distributionRepository;
  DistributionBloc({required DistributionRepository distributionRepository})
      : _distributionRepository = distributionRepository,
        super(DistributionInitial()) {
    on<GetDistribution>((event, emit) async {
      emit(DistributionLoading());
      List<DistributionModel> distributions =
          await distributionRepository.getDistribution();
      emit(DistributionLoaded(distributions: distributions));
    });
  }
}
