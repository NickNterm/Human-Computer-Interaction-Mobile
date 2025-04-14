import 'package:app/features/home/domain/entities/poi.dart';
import 'package:app/features/home/domain/repository/home_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'poi_event.dart';

part 'poi_state.dart';

class PoiBloc extends Bloc<PoiEvent, PoiState> {
  final HomeRepository repository;

  PoiBloc({required this.repository}) : super(PoiState(pois: [])) {
    on<GetPois>(_getPois);
  }

  void _getPois(
    GetPois event,
    Emitter<PoiState> emit,
  ) async {
    var pois = await repository.getPOIs();
    emit(PoiState(pois: pois));
  }
}
