import 'package:app/features/home/domain/entities/poi.dart';
import 'package:app/features/home/domain/entities/quiz.dart';

abstract class HomeRepository {
  Future<List<Poi>> getPOIs();

  Future<Quiz> getQuiz(int poiId);
}
