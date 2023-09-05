import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCard extends StatelessWidget {
  final Color cardColor;
  final Color containerColor; // Specify the type as Color
  final IconData iconData;
  final Color iconColor;
  final String title;

  const CustomCard({
    Key? key,
    required this.cardColor,
    required this.iconData,
    required this.iconColor,
    required this.title,
    required this.containerColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130.w,
      height: 110.h,
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 212, 212, 212).withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 7,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          children: [
            Container(
              width: 55.w,
              height: 55.h,
              decoration: BoxDecoration(
                color: containerColor,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(
                child: Icon(
                  iconData,
                  color: iconColor,
                  size: 35,
                ),
              ),
            ),
            
            Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 102, 102, 102),
              ),
            )
          ],
        ),
      ),
    );
  }
}
