import 'package:flutter/material.dart';
import 'package:flutter_articles/article/widgets/article_author.dart';
import 'package:flutter_articles/article/widgets/article_cover_image.dart';
import 'package:flutter_articles/article/widgets/article_info.dart';
import 'package:flutter_articles/article/widgets/article_tags.dart';
import 'package:flutter_articles/models/article.dart';

class ArticleCard extends StatelessWidget {
  final Article article;

  const ArticleCard({
    super.key,
    required this.article,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20.0),
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        // borderRadius: BorderRadius.circular(16.0),
        // border: Border.all(
        //   width: 1.0,
        //   color: Theme.of(context).dividerColor.withOpacity(0.5),
        // ),
        // boxShadow: [
        //   BoxShadow(
        //     blurRadius: 8.0,
        //     color: AppColors.secondary.withOpacity(0.1),
        //   ),
        // ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ArticleAuthor(article: article),
          if (article.coverImage != null)
            ArticleCoverImage(url: article.coverImage!),
          if (article.coverImage != null) ArticleTags(tags: article.tags),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 10.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  article.title,
                  style: Theme.of(context).textTheme.headlineSmall,
                  textAlign: TextAlign.start,
                ),
                const SizedBox(height: 10.0),
                Text(article.description),
              ],
            ),
          ),
          if (article.coverImage == null) ArticleTags(tags: article.tags),
          const SizedBox(
            height: 10,
          ),
          ArticleInfo(article: article),
        ],
      ),
    );
  }
}
