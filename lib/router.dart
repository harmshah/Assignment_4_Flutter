import 'package:fluro/fluro.dart';
import 'home.dart';
import 'welcome.dart';
import 'quiz.dart';
import 'stopwatch.dart';

class AppRouter {
  
  static final FluroRouter router = FluroRouter();

  static void setupRouter() {
    router.define(
      '/',
      handler: Handler(handlerFunc: (context, params) => const Home()),
    );

    router.define(
      '/welcome',
      handler: Handler(handlerFunc: (context, params) => Welcome()),
    );

    router.define(
      '/tool1',
      handler: Handler(handlerFunc: (context, params) => Stopwatch()),
    );

    router.define(
      '/tool2',
      handler: Handler(handlerFunc: (context, params) => Quiz()),
    );
  }
}
