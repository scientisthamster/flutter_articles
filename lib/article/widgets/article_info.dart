import 'package:flutter/material.dart';
import 'package:flutter_articles/article/widgets/article_info_item.dart';
import 'package:flutter_articles/models/article.dart';
import 'package:flutter_articles/presentation/styles/app_colors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ArticleInfo extends StatelessWidget {
  final Article article;

  const ArticleInfo({
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
      color: Theme.of(context).brightness == Brightness.light
          ? AppColors.grayLight
          : AppColors.white.withOpacity(0.1),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ArticleInfoItem(
            icon: FontAwesomeIcons.solidComment,
            text: '${article.commentsCount} Comments',
          ),
          ArticleInfoItem(
            icon: FontAwesomeIcons.solidHeart,
            text: '${article.positiveReactionsCount} Reactions',
          ),
          ArticleInfoItem(
            icon: FontAwesomeIcons.clock,
            text: '${article.readingTimeMinutes} Min',
          ),
        ],
      ),
    );
  }
}
