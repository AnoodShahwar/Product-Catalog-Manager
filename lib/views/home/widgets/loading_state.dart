import 'package:flutter/material.dart';
import '../../../core/theme/app_theme.dart';

class LoadingState extends StatelessWidget {
  const LoadingState({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const CircularProgressIndicator(color: AppTheme.primary),
        const SizedBox(height: 24),
        const Text(
          'Loading products...',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Color(0xFF1C1C1E),
          ),
        ),
        const SizedBox(height: 8),
        const Text(
          'Synchronizing architectural datasets',
          style: TextStyle(fontSize: 14, color: Colors.grey),
        ),
        const SizedBox(height: 32),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              _skeletonCard(),
              const SizedBox(height: 12),
              _skeletonCard(),
            ],
          ),
        ),
      ],
    );
  }

  Widget _skeletonCard() {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }
}
