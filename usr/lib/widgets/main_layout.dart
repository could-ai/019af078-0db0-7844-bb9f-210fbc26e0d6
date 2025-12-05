import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class MainLayout extends StatelessWidget {
  final Widget child;

  const MainLayout({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'CouldAI SPA',
          style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
        ),
        actions: [
          TextButton(
            onPressed: () => context.go('/'),
            child: const Text('Home'),
          ),
          TextButton(
            onPressed: () => context.go('/about'),
            child: const Text('About'),
          ),
          const SizedBox(width: 20),
        ],
      ),
      body: child,
    );
  }
}
