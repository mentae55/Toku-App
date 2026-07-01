import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final String name;
  final Color color ;
  final VoidCallback  onTap;
  const CustomContainer({super.key, required this.name, required this.color, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.centerLeft,
        padding: const EdgeInsetsGeometry.only(left: 24),
        width: double.infinity,
        height: 65,
        color: color,
        child: Text(
          name,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
