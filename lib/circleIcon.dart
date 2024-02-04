import 'package:flutter/material.dart';

class CircleIcon extends StatefulWidget {
  final String img;
  final VoidCallback? onPressed;
  const CircleIcon({super.key, required this.img, required this.onPressed});

  @override
  State<CircleIcon> createState() => _CircleIconState();
}

class _CircleIconState extends State<CircleIcon> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: widget.onPressed,
      icon: Image.asset(
        widget.img,
        width: 30,
        height: 24,
      ),
      color: Colors.white,
    );
  }
}
