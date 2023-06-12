import 'package:flutter/material.dart';

class CustomButton2 extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final Color? color;

  const CustomButton2({
    Key? key,
    required this.text,
    required this.onTap,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      style: TextButton.styleFrom(
        minimumSize: const Size(double.infinity, 15), backgroundColor: color,
      ),
      child: Text(
        text,
        style: TextStyle(
          color: color == null ? Colors.white : const Color.fromARGB(255, 255, 255, 255),
        ),
      ),
    );
  }
}
