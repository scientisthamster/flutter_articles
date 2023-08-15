import 'package:flutter/material.dart';
import 'package:flutter_articles/models/article.dart';
import 'package:flutter_articles/presentation/styles/app_colors.dart';
import 'package:flutter_articles/presentation/widgets/app_cached_network_image.dart';

class ArticleCardFooter extends StatelessWidget {
  final Article article;

  const ArticleCardFooter({
    super.key,
    required this.article,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 10.0,
      ),
      decoration: BoxDecoration(
        color: AppColors.primary.withOpacity(0.3),
        borderRadius: const BorderRadius.only(
            bottomRight: Radius.circular(15), bottomLeft: Radius.circular(15)),
      ),
      child: Row(
        children: [
          if (article.author?.profileImage90 != null)
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: AppColors.primary,
                  width: 2.0,
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: AppCachedNetworkImage(
                  imageUrl: article.author!.profileImage90!,
                  width: 40.0,
                  height: 40.0,
                ),
              ),
            ),
          const SizedBox(
            width: 10.0,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (article.author?.name != null)
                  Text(
                    article.author!.name,
                    style: const TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                Text(article.readablePublishDate),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
