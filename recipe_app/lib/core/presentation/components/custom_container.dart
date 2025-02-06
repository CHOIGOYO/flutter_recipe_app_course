import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final double h;
  final double? w;
  final Widget child;
  final Color backgroundColor;
  final double borderRadius;
  final Color? borderColor;
  const CustomContainer(
      {super.key,
      required this.h,
      this.w,
      required this.child,
      this.borderRadius = 10,
      this.backgroundColor = Colors.transparent,
      this.borderColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: h,
      width: w,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(borderRadius),
        border: borderColor != null
            ? Border.all(color: borderColor!, width: 1)
            : null,
      ),
      child: child,
    );
  }
}
