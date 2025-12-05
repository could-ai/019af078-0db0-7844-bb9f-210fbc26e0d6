import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:seo_renderer/seo_renderer.dart';
import 'package:couldai_user_app/router/app_router.dart';

void main() {
  // Removes the '#' from the URL
  usePathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // RobotDetector is required for seo_renderer to work
    return RobotDetector(
      debug: false, // Set to true to see the SEO overlay in development
      child: MaterialApp.router(
        title: 'CouldAI - Professional AI Solutions',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        routerConfig: appRouter,
      ),
    );
  }
}
