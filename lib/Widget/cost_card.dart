import 'package:flutter/material.dart';

class CostCard extends StatelessWidget {
  final String name;
  final String imagePath;
  final double rating;
  final double price;

  const CostCard({
    super.key,
    required this.name,
    required this.imagePath,
    required this.rating,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // ❤️ + ⭐ + rating row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.favorite_border, color: Colors.grey[600]),
                Row(
                  children: [
                    const Icon(Icons.star, color: Colors.amber, size: 20),
                    const SizedBox(width: 4),
                    Text(
                      rating.toStringAsFixed(1),
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),

            const SizedBox(height: 10),

            // 👩‍⚕️ Doctor image (circle)
            CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage(imagePath),
            ),

            const SizedBox(height: 12),

            // Doctor name
            Text(
              name,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 6),

            // 💲 Price per hour
            Text(
              "\$${price.toStringAsFixed(2)}/ hours",
              style: const TextStyle(
                fontSize: 16,
                color: Colors.green,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
