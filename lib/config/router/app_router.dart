import 'package:go_router/go_router.dart';
import 'package:widgets_app/presentation/screen/counter/counter_screen.dart';
import 'package:widgets_app/presentation/screen/screens.dart';
import 'package:widgets_app/presentation/screen/theme_changer/theme_changer_screen.dart';

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

    GoRoute(
      path: '/counter',
      builder: (context, state) => const CounterScreen()
      ),

    GoRoute(
      path: '/theme_changer',
      builder: (context, state) => const ThemeChangerScreen()
      ),

  ]
);