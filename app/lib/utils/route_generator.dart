import 'package:app/features/home/domain/entities/poi.dart';
import 'package:app/features/home/presentation/pages/poi_info.dart';
import 'package:app/features/home/presentation/pages/quiz_screen.dart';
import 'package:flutter/material.dart';

import '../core/pages/application.dart';

const String FIRST_SCREEN = '/';

const String POI_INFO = '/poi_info';
const String QUIZ_SCREEN = '/quiz_screen';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Getting arguments passed in while calling Navigator.pushNamed
    final args = settings.arguments;

    switch (settings.name) {
      case FIRST_SCREEN:
        return MaterialPageRoute(
          builder: (context) => Application(),
        );

      case POI_INFO:
        final args = settings.arguments as Poi;
        return MaterialPageRoute(
          builder: (context) => PoiInfo(poi: args),
        );
      case QUIZ_SCREEN:
        return MaterialPageRoute(
          builder: (context) => QuizScreen(),
        );

      default:
        // If there is no such named route in the switch statement, e.g. /third
        return _error();
    }
  }

  static Route<dynamic> _error() {
    return MaterialPageRoute(builder: (_) {
      return const Scaffold(
        body: Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}
