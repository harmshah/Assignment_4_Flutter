// Import the Fluro package for routing
import 'package:fluro/fluro.dart';

// Import the necessary screens/widgets
import 'home.dart';
import 'welcome.dart';
import 'quiz.dart';
import 'stopwatch.dart';

// Define a class for handling routing using Fluro
class AppRouter {
  
  // Create a static instance of FluroRouter
  static final FluroRouter router = FluroRouter();

  // Method to set up the router and define routes
  static void setupRouter() {
    // Define the route for the home screen
    router.define(
      '/',
      handler: Handler(handlerFunc: (context, params) => const Home()), // Handler for the Home screen
    );

    // Define the route for the welcome screen
    router.define(
      '/welcome',
      handler: Handler(handlerFunc: (context, params) => Welcome()), // Handler for the Welcome screen
    );

    // Define the route for the stopwatch screen (tool1)
    router.define(
      '/tool1',
      handler: Handler(handlerFunc: (context, params) => Stopwatch()), // Handler for the Stopwatch screen
    );

    // Define the route for the quiz screen (tool2)
    router.define(
      '/tool2',
      handler: Handler(handlerFunc: (context, params) => Quiz()), // Handler for the Quiz screen
    );
  }
}
