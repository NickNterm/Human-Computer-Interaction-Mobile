import 'package:app/features/home/domain/entities/general_sensor.dart';

import '../entities/poi.dart';

abstract class HomeRepository {
  Future<List<Poi>> getPOIs();
}
