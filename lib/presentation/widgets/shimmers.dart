import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class YShimmerEffect extends StatelessWidget {
  const YShimmerEffect({
    super.key,
    required this.width,
    required this.height,
    this.radius = 2,
    this.color,
  });

  final double width, height, radius;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    // Enforce dark theme styling only
    return Shimmer.fromColors(
      baseColor: Colors.grey[850]!,
      highlightColor: Colors.grey[700]!,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: color ?? Colors.black,
          borderRadius: BorderRadius.circular(radius),
        ),
      ),
    );
  }
}
