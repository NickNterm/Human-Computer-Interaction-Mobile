import 'package:app/core/dependency_injection.dart';
import 'package:app/features/home/presentation/bloc/quiz/quiz_bloc.dart';
import 'package:app/utils/extensions/context.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  PageController _controller = PageController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Quiz",
          style: context.textStyles.header2.copyWith(
            color: Colors.white,
          ),
        ),
      ),
      body: BlocBuilder<QuizBloc, QuizState>(
        bloc: sl<QuizBloc>(),
        builder: (context, state) {
          if (state.quiz == null) return Container();
          return PageView.builder(
            itemCount: state.quiz!.questions.length,
            controller: _controller,
            itemBuilder: (context, index) => Row(
              children: [
                Visibility(
                  visible: index != 0,
                  replacement: SizedBox(
                    width: 48,
                  ),
                  child: IconButton(
                    onPressed: () {
                      _controller.previousPage(
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    },
                    icon: Icon(
                      Icons.keyboard_arrow_left,
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 32,
                        ),
                        child: Text(
                          state.quiz!.questions[index].question,
                          textAlign: TextAlign.center,
                          style: context.textStyles.header3,
                        ),
                      ),
                      ...state.quiz!.questions[index].choices.map(
                        (e) => Container(
                          width: MediaQuery.of(context).size.width,
                          height: 52,
                          margin: EdgeInsets.only(
                            bottom: 12,
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          alignment: Alignment.center,
                          child: Text(e),
                        ),
                      ),
                    ],
                  ),
                ),
                Visibility(
                  visible: index != 3,
                  replacement: SizedBox(
                    width: 48,
                  ),
                  child: IconButton(
                    onPressed: () {
                      _controller.nextPage(
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    },
                    icon: Icon(
                      Icons.keyboard_arrow_right,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
