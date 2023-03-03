import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:tahfidz_quran/models/info_model.dart';
import 'package:tahfidz_quran/repositories/info_repository.dart';

part 'info_event.dart';
part 'info_state.dart';

class InfoBloc extends Bloc<InfoEvent, InfoState> {
  final InfoRepository _infoRepository;
  InfoBloc({required InfoRepository infoRepository})
      : _infoRepository = infoRepository,
        super(InfoInitial()) {
    on<GetInfoEvent>((event, emit) async {
      emit(InfoLoading());
      try {
        InfoModel info = await _infoRepository.getInfo();
        emit(InfoLoaded(info));
      } catch (e) {
        emit(InfoFailed(e.toString()));
      }
    });
  }
}
