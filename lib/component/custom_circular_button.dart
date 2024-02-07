import 'package:flutter/material.dart';

class CircularButton extends StatelessWidget {
  const CircularButton({
    super.key,
    required this.onTap,
    this.bgColor = Colors.grey,
    this.bgColorAlpha = 50,
    required this.icon,
    this.iconColor = Colors.black,
  });
  final VoidCallback onTap;
  final int bgColorAlpha;
  final Color bgColor;
  final IconData icon;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: bgColor.withAlpha(bgColorAlpha),
      ),
      child: IconButton(
          onPressed: onTap,
          icon: Icon(
            icon,
            size: 20,
            color: iconColor,
          )),
    );
  }
}
