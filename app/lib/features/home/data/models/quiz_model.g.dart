// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quiz_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<QuizModel> _$quizModelSerializer = new _$QuizModelSerializer();

class _$QuizModelSerializer implements StructuredSerializer<QuizModel> {
  @override
  final Iterable<Type> types = const [QuizModel, _$QuizModel];
  @override
  final String wireName = 'QuizModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, QuizModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'questions',
      serializers.serialize(object.questions,
          specifiedType:
              const FullType(BuiltList, const [const FullType(QuestionModel)])),
    ];

    return result;
  }

  @override
  QuizModel deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new QuizModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'questions':
          result.questions.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(QuestionModel)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$QuizModel extends QuizModel {
  @override
  final BuiltList<QuestionModel> questions;

  factory _$QuizModel([void Function(QuizModelBuilder)? updates]) =>
      (new QuizModelBuilder()..update(updates))._build();

  _$QuizModel._({required this.questions}) : super._() {
    BuiltValueNullFieldError.checkNotNull(questions, r'QuizModel', 'questions');
  }

  @override
  QuizModel rebuild(void Function(QuizModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  QuizModelBuilder toBuilder() => new QuizModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is QuizModel && questions == other.questions;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, questions.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'QuizModel')
          ..add('questions', questions))
        .toString();
  }
}

class QuizModelBuilder implements Builder<QuizModel, QuizModelBuilder> {
  _$QuizModel? _$v;

  ListBuilder<QuestionModel>? _questions;
  ListBuilder<QuestionModel> get questions =>
      _$this._questions ??= new ListBuilder<QuestionModel>();
  set questions(ListBuilder<QuestionModel>? questions) =>
      _$this._questions = questions;

  QuizModelBuilder();

  QuizModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _questions = $v.questions.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(QuizModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$QuizModel;
  }

  @override
  void update(void Function(QuizModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  QuizModel build() => _build();

  _$QuizModel _build() {
    _$QuizModel _$result;
    try {
      _$result = _$v ??
          new _$QuizModel._(
            questions: questions.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'questions';
        questions.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'QuizModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
