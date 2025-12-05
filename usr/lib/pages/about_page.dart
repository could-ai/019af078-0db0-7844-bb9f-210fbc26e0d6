import 'package:flutter/material.dart';
import 'package:seo_renderer/seo_renderer.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

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
                TextRenderer(
                  text: 'About Us',
                  child: Text(
                    'About Us',
                    style: GoogleFonts.poppins(
                      fontSize: 48,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                TextRenderer(
                  text: 'CouldAI is dedicated to bringing the power of artificial intelligence to everyone. '
                      'Our team of experts works tirelessly to build tools that empower users.',
                  child: Text(
                    'CouldAI is dedicated to bringing the power of artificial intelligence to everyone. '
                    'Our team of experts works tirelessly to build tools that empower users.',
                    style: GoogleFonts.roboto(
                      fontSize: 18,
                      height: 1.5,
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                const Divider(),
                const SizedBox(height: 40),
                TextRenderer(
                  text: 'Our Mission',
                  child: Text(
                    'Our Mission',
                    style: GoogleFonts.poppins(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                TextRenderer(
                  text: 'To democratize AI technology through accessible, performant, and beautiful applications.',
                  child: Text(
                    'To democratize AI technology through accessible, performant, and beautiful applications.',
                    style: GoogleFonts.roboto(
                      fontSize: 18,
                      height: 1.5,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
