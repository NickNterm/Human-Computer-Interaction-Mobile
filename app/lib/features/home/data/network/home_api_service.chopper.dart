// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_api_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$HomeApiService extends HomeApiService {
  _$HomeApiService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = HomeApiService;

  @override
  Future<Response<BuiltList<PoiModel>>> getPOIs() {
    final Uri $url = Uri.parse('/api/poi/');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<BuiltList<PoiModel>, PoiModel>($request);
  }

  @override
  Future<Response<QuizModel>> getQuiz({required int id}) {
    final Uri $url = Uri.parse('/api/quiz/${id}/');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<QuizModel, QuizModel>($request);
  }
}
