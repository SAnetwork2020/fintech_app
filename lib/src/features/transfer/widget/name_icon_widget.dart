
import 'package:flutter/material.dart';

class NameIconWidget extends StatelessWidget {
  const NameIconWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 7.5),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: const ShapeDecoration(
              shape: CircleBorder(),
              color: Color(0xFF3e56d2),
            ),
            child: const Center(
              child: Text(
                "J",
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          const SizedBox(height: 5),
          const Text(
            "John Doe",
            style: TextStyle(
              fontSize: 12,
              color: Colors.white,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}