
import 'package:flutterapp/pages/home_page.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  initialLocation: '/',

  routes: [

    GoRoute(
      path: '/',
      name: AppRoute.home.name,
      builder: (context, state) {
        return HomePage();
      },
      routes: [

      ]
    ),
  ],
);