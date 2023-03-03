import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:tahfidz_quran/models/models.dart';
import 'package:tahfidz_quran/repositories/tahfidz_house_repository.dart';

part 'tahfidz_house_event.dart';
part 'tahfidz_house_state.dart';

class TahfidzHouseBloc extends Bloc<TahfidzHouseEvent, TahfidzHouseState> {
  final TahfidzHouseRepository _tahfidzHouseRepository;
  TahfidzHouseBloc({required TahfidzHouseRepository tahfidzHouseRepository})
      : _tahfidzHouseRepository = tahfidzHouseRepository,
        super(TahfidzHouseInitial()) {
    on<GetTahfidzHouse>((event, emit) async {
      emit(TahfidzHouseLoading());
      List<TahfidzHouseModel> tahfidzhouses =
          await tahfidzHouseRepository.getTahfidzHouse();
      print(tahfidzhouses);
      emit(TahfidzHouseLoaded(tahfidzHouses: tahfidzhouses));
    });
  }
}
