part of 'quiz_bloc.dart';

@immutable
sealed class QuizEvent {}

class GetQuizEvent extends QuizEvent {
  final int poiId;

  GetQuizEvent({
    required this.poiId,
  });
}

class AnswerEvent extends QuizEvent {
  final bool isCorrect;

  AnswerEvent({
    required this.isCorrect,
  });
}

class ResetEvent extends QuizEvent {}
