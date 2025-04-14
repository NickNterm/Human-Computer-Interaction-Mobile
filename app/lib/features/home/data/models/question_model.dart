library question_model;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'question_model.g.dart';

abstract class QuestionModel
    implements Built<QuestionModel, QuestionModelBuilder> {
  QuestionModel._();

  @BuiltValueField(wireName: 'id')
  int get id;

  @BuiltValueField(wireName: 'question')
  String get question;

  @BuiltValueField(wireName: 'choice1')
  String get choice1;

  @BuiltValueField(wireName: 'choice2')
  String get choice2;

  @BuiltValueField(wireName: 'choice3')
  String get choice3;

  @BuiltValueField(wireName: 'answer')
  String get answer;

  factory QuestionModel([updates(QuestionModelBuilder b)]) = _$QuestionModel;

  static Serializer<QuestionModel> get serializer => _$questionModelSerializer;
}
