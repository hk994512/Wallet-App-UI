import 'package:flutter/material.dart';
import 'package:wallet/extension/app_extension.dart';

class MyListTile extends StatelessWidget {
  const MyListTile({
    super.key,
    required this.imagePath,
    required this.tileTitle,
    required this.tileSubTitle,
  });
  final String imagePath;
  final String tileTitle;
  final String tileSubTitle;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        //
        Row(
          children: [
            Container(
              padding: EdgeInsets.all(12),
              height: 80,

              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(12),
              ),
              child: Image.asset(imagePath),
            ),
            20.0.byWidth,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  tileTitle,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                8.0.byHeight,
                Text(
                  tileSubTitle,
                  style: TextStyle(color: Colors.grey[600], fontSize: 16),
                ),
              ],
            ),
          ],
        ),

        Icon(Icons.arrow_forward_ios),
      ],
    );
  }
}
