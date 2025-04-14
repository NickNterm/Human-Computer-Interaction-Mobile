library quiz_model;

import 'package:app/features/home/data/models/question_model.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'quiz_model.g.dart';

abstract class QuizModel implements Built<QuizModel, QuizModelBuilder> {
  QuizModel._();

  @BuiltValueField(wireName: 'questions')
  BuiltList<QuestionModel> get questions;

  factory QuizModel([updates(QuizModelBuilder b)]) = _$QuizModel;

  static Serializer<QuizModel> get serializer => _$quizModelSerializer;
}
