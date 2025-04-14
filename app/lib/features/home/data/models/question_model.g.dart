// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<QuestionModel> _$questionModelSerializer =
    new _$QuestionModelSerializer();

class _$QuestionModelSerializer implements StructuredSerializer<QuestionModel> {
  @override
  final Iterable<Type> types = const [QuestionModel, _$QuestionModel];
  @override
  final String wireName = 'QuestionModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, QuestionModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'question',
      serializers.serialize(object.question,
          specifiedType: const FullType(String)),
      'choice1',
      serializers.serialize(object.choice1,
          specifiedType: const FullType(String)),
      'choice2',
      serializers.serialize(object.choice2,
          specifiedType: const FullType(String)),
      'choice3',
      serializers.serialize(object.choice3,
          specifiedType: const FullType(String)),
      'answer',
      serializers.serialize(object.answer,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  QuestionModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new QuestionModelBuilder();

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
        case 'question':
          result.question = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'choice1':
          result.choice1 = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'choice2':
          result.choice2 = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'choice3':
          result.choice3 = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'answer':
          result.answer = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$QuestionModel extends QuestionModel {
  @override
  final int id;
  @override
  final String question;
  @override
  final String choice1;
  @override
  final String choice2;
  @override
  final String choice3;
  @override
  final String answer;

  factory _$QuestionModel([void Function(QuestionModelBuilder)? updates]) =>
      (new QuestionModelBuilder()..update(updates))._build();

  _$QuestionModel._(
      {required this.id,
      required this.question,
      required this.choice1,
      required this.choice2,
      required this.choice3,
      required this.answer})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'QuestionModel', 'id');
    BuiltValueNullFieldError.checkNotNull(
        question, r'QuestionModel', 'question');
    BuiltValueNullFieldError.checkNotNull(choice1, r'QuestionModel', 'choice1');
    BuiltValueNullFieldError.checkNotNull(choice2, r'QuestionModel', 'choice2');
    BuiltValueNullFieldError.checkNotNull(choice3, r'QuestionModel', 'choice3');
    BuiltValueNullFieldError.checkNotNull(answer, r'QuestionModel', 'answer');
  }

  @override
  QuestionModel rebuild(void Function(QuestionModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  QuestionModelBuilder toBuilder() => new QuestionModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is QuestionModel &&
        id == other.id &&
        question == other.question &&
        choice1 == other.choice1 &&
        choice2 == other.choice2 &&
        choice3 == other.choice3 &&
        answer == other.answer;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, question.hashCode);
    _$hash = $jc(_$hash, choice1.hashCode);
    _$hash = $jc(_$hash, choice2.hashCode);
    _$hash = $jc(_$hash, choice3.hashCode);
    _$hash = $jc(_$hash, answer.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'QuestionModel')
          ..add('id', id)
          ..add('question', question)
          ..add('choice1', choice1)
          ..add('choice2', choice2)
          ..add('choice3', choice3)
          ..add('answer', answer))
        .toString();
  }
}

class QuestionModelBuilder
    implements Builder<QuestionModel, QuestionModelBuilder> {
  _$QuestionModel? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _question;
  String? get question => _$this._question;
  set question(String? question) => _$this._question = question;

  String? _choice1;
  String? get choice1 => _$this._choice1;
  set choice1(String? choice1) => _$this._choice1 = choice1;

  String? _choice2;
  String? get choice2 => _$this._choice2;
  set choice2(String? choice2) => _$this._choice2 = choice2;

  String? _choice3;
  String? get choice3 => _$this._choice3;
  set choice3(String? choice3) => _$this._choice3 = choice3;

  String? _answer;
  String? get answer => _$this._answer;
  set answer(String? answer) => _$this._answer = answer;

  QuestionModelBuilder();

  QuestionModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _question = $v.question;
      _choice1 = $v.choice1;
      _choice2 = $v.choice2;
      _choice3 = $v.choice3;
      _answer = $v.answer;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(QuestionModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$QuestionModel;
  }

  @override
  void update(void Function(QuestionModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  QuestionModel build() => _build();

  _$QuestionModel _build() {
    final _$result = _$v ??
        new _$QuestionModel._(
          id: BuiltValueNullFieldError.checkNotNull(id, r'QuestionModel', 'id'),
          question: BuiltValueNullFieldError.checkNotNull(
              question, r'QuestionModel', 'question'),
          choice1: BuiltValueNullFieldError.checkNotNull(
              choice1, r'QuestionModel', 'choice1'),
          choice2: BuiltValueNullFieldError.checkNotNull(
              choice2, r'QuestionModel', 'choice2'),
          choice3: BuiltValueNullFieldError.checkNotNull(
              choice3, r'QuestionModel', 'choice3'),
          answer: BuiltValueNullFieldError.checkNotNull(
              answer, r'QuestionModel', 'answer'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
