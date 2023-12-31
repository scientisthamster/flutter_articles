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
    return AppCachedNetworkImage(
      imageUrl: url,
      height: 220.0,
      width: MediaQuery.of(context).size.width,
      fit: BoxFit.fill,
    );
  }
}
