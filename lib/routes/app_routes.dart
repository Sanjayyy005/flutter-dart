import 'package:flutterapp/routes/route_enum.dart';

import 'package:go_router/go_router.dart';

import '../pages/home_page.dart';

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