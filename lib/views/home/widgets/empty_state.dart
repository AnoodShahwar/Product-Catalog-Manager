import 'package:flutter/material.dart';

class EmptyState extends StatelessWidget {
  final VoidCallback onAddProduct;

  const EmptyState({super.key, required this.onAddProduct});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                color: const Color(0xFFEEF0F8),
                borderRadius: BorderRadius.circular(24),
              ),
              child: const Icon(
                Icons.inventory_2_outlined,
                size: 56,
                color: Color(0xFF8E8E93),
              ),
            ),
            const SizedBox(height: 24),
            const Text(
              'No products found',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Color(0xFF1C1C1E),
              ),
            ),
            const SizedBox(height: 12),
            const Text(
              'Your workspace is currently a clean slate. Start by adding your first product to the repository.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
            const SizedBox(height: 32),
            ElevatedButton.icon(
              onPressed: onAddProduct,
              icon: const Icon(Icons.add),
              label: const Text('Add Product'),
            ),
          ],
        ),
      ),
    );
  }
}
