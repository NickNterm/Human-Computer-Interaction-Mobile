// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'poi_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PoiModel> _$poiModelSerializer = new _$PoiModelSerializer();

class _$PoiModelSerializer implements StructuredSerializer<PoiModel> {
  @override
  final Iterable<Type> types = const [PoiModel, _$PoiModel];
  @override
  final String wireName = 'PoiModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, PoiModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'lat',
      serializers.serialize(object.lat, specifiedType: const FullType(double)),
      'lon',
      serializers.serialize(object.lon, specifiedType: const FullType(double)),
      'type',
      serializers.serialize(object.type, specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'imageUrl',
      serializers.serialize(object.imageUrl,
          specifiedType: const FullType(String)),
      'shortDescription',
      serializers.serialize(object.shortDescription,
          specifiedType: const FullType(String)),
      'longDescription',
      serializers.serialize(object.text, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  PoiModel deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PoiModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'lat':
          result.lat = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'lon':
          result.lon = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'imageUrl':
          result.imageUrl = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'shortDescription':
          result.shortDescription = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'longDescription':
          result.text = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$PoiModel extends PoiModel {
  @override
  final int id;
  @override
  final double lat;
  @override
  final double lon;
  @override
  final String type;
  @override
  final String name;
  @override
  final String imageUrl;
  @override
  final String shortDescription;
  @override
  final String text;

  factory _$PoiModel([void Function(PoiModelBuilder)? updates]) =>
      (new PoiModelBuilder()..update(updates))._build();

  _$PoiModel._(
      {required this.id,
      required this.lat,
      required this.lon,
      required this.type,
      required this.name,
      required this.imageUrl,
      required this.shortDescription,
      required this.text})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'PoiModel', 'id');
    BuiltValueNullFieldError.checkNotNull(lat, r'PoiModel', 'lat');
    BuiltValueNullFieldError.checkNotNull(lon, r'PoiModel', 'lon');
    BuiltValueNullFieldError.checkNotNull(type, r'PoiModel', 'type');
    BuiltValueNullFieldError.checkNotNull(name, r'PoiModel', 'name');
    BuiltValueNullFieldError.checkNotNull(imageUrl, r'PoiModel', 'imageUrl');
    BuiltValueNullFieldError.checkNotNull(
        shortDescription, r'PoiModel', 'shortDescription');
    BuiltValueNullFieldError.checkNotNull(text, r'PoiModel', 'text');
  }

  @override
  PoiModel rebuild(void Function(PoiModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PoiModelBuilder toBuilder() => new PoiModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PoiModel &&
        id == other.id &&
        lat == other.lat &&
        lon == other.lon &&
        type == other.type &&
        name == other.name &&
        imageUrl == other.imageUrl &&
        shortDescription == other.shortDescription &&
        text == other.text;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, lat.hashCode);
    _$hash = $jc(_$hash, lon.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, imageUrl.hashCode);
    _$hash = $jc(_$hash, shortDescription.hashCode);
    _$hash = $jc(_$hash, text.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PoiModel')
          ..add('id', id)
          ..add('lat', lat)
          ..add('lon', lon)
          ..add('type', type)
          ..add('name', name)
          ..add('imageUrl', imageUrl)
          ..add('shortDescription', shortDescription)
          ..add('text', text))
        .toString();
  }
}

class PoiModelBuilder implements Builder<PoiModel, PoiModelBuilder> {
  _$PoiModel? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  double? _lat;
  double? get lat => _$this._lat;
  set lat(double? lat) => _$this._lat = lat;

  double? _lon;
  double? get lon => _$this._lon;
  set lon(double? lon) => _$this._lon = lon;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _imageUrl;
  String? get imageUrl => _$this._imageUrl;
  set imageUrl(String? imageUrl) => _$this._imageUrl = imageUrl;

  String? _shortDescription;
  String? get shortDescription => _$this._shortDescription;
  set shortDescription(String? shortDescription) =>
      _$this._shortDescription = shortDescription;

  String? _text;
  String? get text => _$this._text;
  set text(String? text) => _$this._text = text;

  PoiModelBuilder();

  PoiModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _lat = $v.lat;
      _lon = $v.lon;
      _type = $v.type;
      _name = $v.name;
      _imageUrl = $v.imageUrl;
      _shortDescription = $v.shortDescription;
      _text = $v.text;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PoiModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PoiModel;
  }

  @override
  void update(void Function(PoiModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PoiModel build() => _build();

  _$PoiModel _build() {
    final _$result = _$v ??
        new _$PoiModel._(
          id: BuiltValueNullFieldError.checkNotNull(id, r'PoiModel', 'id'),
          lat: BuiltValueNullFieldError.checkNotNull(lat, r'PoiModel', 'lat'),
          lon: BuiltValueNullFieldError.checkNotNull(lon, r'PoiModel', 'lon'),
          type:
              BuiltValueNullFieldError.checkNotNull(type, r'PoiModel', 'type'),
          name:
              BuiltValueNullFieldError.checkNotNull(name, r'PoiModel', 'name'),
          imageUrl: BuiltValueNullFieldError.checkNotNull(
              imageUrl, r'PoiModel', 'imageUrl'),
          shortDescription: BuiltValueNullFieldError.checkNotNull(
              shortDescription, r'PoiModel', 'shortDescription'),
          text:
              BuiltValueNullFieldError.checkNotNull(text, r'PoiModel', 'text'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
