import 'package:flutter/material.dart';

class DoctorPrice extends StatelessWidget {
  final num price;

  const DoctorPrice({super.key, required this.price});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          "Price:",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Spacer(),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          decoration: BoxDecoration(
            color: Colors.blue.shade50,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.blue.shade200),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(Icons.attach_money, color: Colors.blue),
              const SizedBox(width: 8),
              Text(
                "$price EGP",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue.shade900,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
