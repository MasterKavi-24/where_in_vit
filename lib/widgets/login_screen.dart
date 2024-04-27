import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  final String image;
  final String text;
  final VoidCallback onTap;
  const LoginButton({
    super.key,
    required this.image,
    required this.onTap,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.all(12),
      // decoration: BoxDecoration(border: Border.all(color: Colors.black)),
      child: Container(
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Color(0xFF2865B0),
        ),
        child: GestureDetector(
          onTap: onTap,
          child: Column(
            children: [
              Image.asset(
                image,
                height: 100,
              ),
              const SizedBox(height: 30),
              Text(text),
            ],
          ),
        ),
      ),
    );
  }
}
