import 'package:app/features/home/data/models/quiz_model.dart';
import 'package:app/features/home/domain/entities/question.dart';

class Quiz {
  final List<Question> questions;

  Quiz({
    required this.questions,
  });

  factory Quiz.fromModel(QuizModel model) {
    return Quiz(
      questions: model.questions
          .map(
            (e) => Question.fromModel(e),
          )
          .toList(),
    );
  }
}
