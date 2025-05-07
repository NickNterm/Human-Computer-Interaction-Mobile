import 'package:app/features/home/data/models/question_model.dart';

class Question {
  final String question;
  final List<String> choices;
  final String answer;

  Question({
    required this.question,
    required this.choices,
    required this.answer,
  });

  factory Question.fromModel(QuestionModel model) {
    List<String> choices = [
      model.choice1,
      model.choice2,
      model.choice3,
      model.answer
    ]..shuffle();

    return Question(
      question: model.question,
      choices: choices,
      answer: model.answer,
    );
  }
}
