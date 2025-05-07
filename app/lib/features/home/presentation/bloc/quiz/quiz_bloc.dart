import 'package:app/features/home/domain/entities/quiz.dart';
import 'package:app/features/home/domain/repository/home_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'quiz_event.dart';

part 'quiz_state.dart';

class QuizBloc extends Bloc<QuizEvent, QuizState> {
  final HomeRepository repository;

  QuizBloc({
    required this.repository,
  }) : super(QuizState()) {
    on<GetQuizEvent>(_getQuizEvent);
    on<AnswerEvent>(_answerEvent);
    on<ResetEvent>(_resetEvent);
  }

  _resetEvent(
    ResetEvent event,
    Emitter<QuizState> emit,
  ) {
    emit(QuizState());
  }

  _getQuizEvent(
    GetQuizEvent event,
    Emitter<QuizState> emit,
  ) async {
    Quiz quiz = await repository.getQuiz(event.poiId);
    emit(QuizState(quiz: quiz));
  }

  _answerEvent(
    AnswerEvent event,
    Emitter<QuizState> emit,
  ) async {
    emit(
      QuizState(
        quiz: state.quiz,
        score: state.score + (event.isCorrect ? 1 : 0),
      ),
    );
  }
}
