import 'package:app/features/home/data/models/poi_model.dart';
import 'package:app/features/home/data/models/quiz_model.dart';
import 'package:app/features/home/data/network/home_api_service.dart';
import 'package:built_collection/built_collection.dart';

abstract class HomeRemoteDataSource {
  Future<BuiltList<PoiModel>> getPOIs();

  Future<QuizModel> getQuiz(int poiId);
}

class HomeRemoteDataSourceImpl implements HomeRemoteDataSource {
  final HomeApiService client;

  HomeRemoteDataSourceImpl({
    required this.client,
  });

  @override
  Future<BuiltList<PoiModel>> getPOIs() async {
    return (await client.getPOIs()).bodyOrThrow;
  }

  @override
  Future<QuizModel> getQuiz(int poiId) async {
    return (await client.getQuiz(id: poiId)).bodyOrThrow;
  }
}
