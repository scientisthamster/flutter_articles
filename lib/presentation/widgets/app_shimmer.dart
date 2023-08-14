import 'package:flutter/material.dart';
import 'package:flutter_articles/presentation/styles/app_colors.dart';
import 'package:shimmer/shimmer.dart';

class AppShimmer extends StatelessWidget {
  final double? width;
  final double? height;

  const AppShimmer({
    super.key,
    this.width = 100,
    this.height = 100,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: Shimmer.fromColors(
        baseColor: AppColors.gray,
        highlightColor: AppColors.grayLight,
        child: Container(
          width: width,
          height: height,
          color: AppColors.white,
        ),
      ),
    );
  }
}
