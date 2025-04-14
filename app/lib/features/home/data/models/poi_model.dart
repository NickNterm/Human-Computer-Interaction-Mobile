library poi_model;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'poi_model.g.dart';

abstract class PoiModel implements Built<PoiModel, PoiModelBuilder> {
  PoiModel._();

  @BuiltValueField(wireName: 'id')
  int get id;

  @BuiltValueField(wireName: 'lat')
  double get lat;

  @BuiltValueField(wireName: 'lon')
  double get lon;

  @BuiltValueField(wireName: 'type')
  String get type;

  @BuiltValueField(wireName: 'name')
  String get name;

  @BuiltValueField(wireName: 'imageUrl')
  String get imageUrl;

  @BuiltValueField(wireName: 'shortDescription')
  String get shortDescription;

  @BuiltValueField(wireName: 'longDescription')
  String get text;

  factory PoiModel([updates(PoiModelBuilder b)]) = _$PoiModel;

  static Serializer<PoiModel> get serializer => _$poiModelSerializer;
}
