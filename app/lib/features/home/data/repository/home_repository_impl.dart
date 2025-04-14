import 'package:app/features/home/data/models/poi_model.dart';
import 'package:app/features/home/data/sources/remote_data_source.dart';
import 'package:app/features/home/domain/entities/poi.dart';
import 'package:built_collection/built_collection.dart';

import '../../domain/repository/home_repository.dart';

class HomeRepositoryImpl extends HomeRepository {
  final HomeRemoteDataSource remoteDataSource;

  HomeRepositoryImpl({
    required this.remoteDataSource,
  });

  @override
  Future<List<Poi>> getPOIs() async {
    BuiltList<PoiModel> poiModels = await remoteDataSource.getPOIs();
    List<Poi> pois = poiModels
        .map(
          (s) => Poi.fromModel(s),
        )
        .toList();
    return pois;
  }
}
