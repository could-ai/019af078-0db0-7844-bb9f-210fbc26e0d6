import 'package:flutter/material.dart';
import 'package:seo_renderer/seo_renderer.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 800),
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // SEO Friendly Title
                TextRenderer(
                  text: 'Welcome to CouldAI',
                  child: Text(
                    'Welcome to CouldAI',
                    style: GoogleFonts.poppins(
                      fontSize: 48,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                // SEO Friendly Description
                TextRenderer(
                  text: 'We provide state-of-the-art AI solutions for your business. '
                      'Our Single Page Application is built with Flutter and optimized for SEO.',
                  child: Text(
                    'We provide state-of-the-art AI solutions for your business. '
                    'Our Single Page Application is built with Flutter and optimized for SEO.',
                    style: GoogleFonts.roboto(
                      fontSize: 18,
                      height: 1.5,
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                Wrap(
                  spacing: 20,
                  runSpacing: 20,
                  children: [
                    _buildFeatureCard(
                      'Fast Performance',
                      'Built with Flutter for 60fps performance on the web.',
                    ),
                    _buildFeatureCard(
                      'SEO Optimized',
                      'Content is rendered to the DOM for search engines to index.',
                    ),
                    _buildFeatureCard(
                      'Cross Platform',
                      'Runs on Web, iOS, Android, macOS, and Windows.',
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildFeatureCard(String title, String description) {
    return Container(
      width: 240,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextRenderer(
            text: title,
            child: Text(
              title,
              style: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const SizedBox(height: 10),
          TextRenderer(
            text: description,
            child: Text(
              description,
              style: GoogleFonts.roboto(fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }
}
