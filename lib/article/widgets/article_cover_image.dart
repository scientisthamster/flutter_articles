import 'package:flutter/material.dart';
import 'package:flutter_articles/presentation/widgets/app_cached_network_image.dart';

class ArticleCoverImage extends StatelessWidget {
  final String url;

  const ArticleCoverImage({
    super.key,
    required this.url,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topRight: Radius.circular(14.0),
        topLeft: Radius.circular(14.0),
      ),
      child: AppCachedNetworkImage(
        imageUrl: url,
        height: 150.0,
        width: double.infinity,
      ),
    );
  }
}
