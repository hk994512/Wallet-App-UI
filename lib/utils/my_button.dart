import 'package:flutter/material.dart';
import 'package:wallet/extension/app_extension.dart';

class MyButton extends StatelessWidget {
  const MyButton({super.key, required this.imagePath, required this.title});
  final String imagePath;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 85,
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade400,
                blurRadius: 40,
                spreadRadius: 10,
              ),
            ],
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(20),
          ),
          child: Center(child: Image.asset(imagePath)),
        ),
        12.0.byHeight,
        Text(
          title,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.grey[700],
          ),
        ),
      ],
    );
  }
}
