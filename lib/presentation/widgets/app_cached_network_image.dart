import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_articles/presentation/widgets/app_shimmer.dart';

class AppCachedNetworkImage extends StatelessWidget {
  final String imageUrl;
  final LoadingErrorWidgetBuilder? customErrorWidgetBuilder;
  final Widget? customErrorWidget;
  final Widget? loaderWidget;
  final bool noLoader;
  final double? height;
  final double? width;
  final BoxFit fit;
  final Alignment alignment;
  final Color? color;
  final BlendMode? colorBlendMode;

  const AppCachedNetworkImage({
    super.key,
    required this.imageUrl,
    this.customErrorWidgetBuilder,
    this.customErrorWidget,
    this.loaderWidget,
    this.noLoader = false,
    this.height,
    this.width,
    this.fit = BoxFit.cover,
    this.alignment = Alignment.center,
    this.color,
    this.colorBlendMode,
  });

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageUrl,
      placeholder: noLoader
          ? null
          : (_, __) => Center(
                child: loaderWidget ??
                    AppShimmer(
                      width: width,
                      height: height,
                    ),
              ),
      width: width,
      height: height,
      fit: fit,
      color: color,
      colorBlendMode: colorBlendMode,
      alignment: alignment,
      errorWidget: customErrorWidgetBuilder ??
          (BuildContext context, String url, dynamic error) {
            return customErrorWidget ??
                const Center(
                  child: Text('-'),
                );
          },
    );
  }
}
