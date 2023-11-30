import 'package:go_router/go_router.dart';
import 'package:widgets_app/presentation/screen/screens.dart';

final appRouter = GoRouter(
  routes: [

    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen()
      ),

    GoRoute(
      path: '/buttons',
      builder: (context, state) => const ButtonsScreen()
      ),

    GoRoute(
      path: '/card',
      builder: (context, state) => const CardsScreen()
      ),

    GoRoute(
      path: '/progress',
      builder: (context, state) => const ProgressScreen()
      ),

    GoRoute(
      path: '/snackbar',
      builder: (context, state) => const SnackbarScreen()
      ),

    GoRoute(
      path: '/animated',
      builder: (context, state) => const AnimatedScreen()
      ),

    GoRoute(
      path: '/ui-controls',
      builder: (context, state) => const UiControlsScreen()
      ),
      
    GoRoute(
      path: '/tutorial',
      builder: (context, state) => const AppTutorialScreen()
      ),

    GoRoute(
      path: '/infinite-scroll',
      builder: (context, state) => const InfiniteScrollScreen()
      ),

  ]
);