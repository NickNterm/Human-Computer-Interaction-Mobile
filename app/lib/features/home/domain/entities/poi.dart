import 'package:app/features/home/data/models/poi_model.dart';

class Poi {
  final int id;
  final double lat;
  final double lon;
  final String type;
  final String name;
  final String imageUrl;
  final String shortDescription;
  final String text;

  Poi({
    required this.id,
    required this.lat,
    required this.lon,
    required this.type,
    required this.name,
    required this.imageUrl,
    required this.shortDescription,
    required this.text,
  });

  factory Poi.fromModel(PoiModel model) {
    return Poi(
      id: model.id,
      lat: model.lat,
      lon: model.lon,
      type: model.type,
      name: model.name,
      imageUrl: model.imageUrl,
      shortDescription: model.shortDescription,
      text: model.text,
    );
  }
}
