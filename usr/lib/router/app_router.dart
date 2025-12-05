import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:couldai_user_app/pages/home_page.dart';
import 'package:couldai_user_app/pages/about_page.dart';
import 'package:couldai_user_app/widgets/main_layout.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    ShellRoute(
      builder: (context, state, child) {
        return MainLayout(child: child);
      },
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) => const HomePage(),
        ),
        GoRoute(
          path: '/about',
          builder: (context, state) => const AboutPage(),
        ),
      ],
    ),
  ],
);
