import 'package:flutter/material.dart';
import 'package:flutter_articles/article/widgets/article_card.dart';
import 'package:flutter_articles/models/article.dart';

class ArticlesList extends StatelessWidget {
  final List<Article> articles;

  const ArticlesList({
    super.key,
    required this.articles,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.only(bottom: 20.0),
      itemCount: articles.length,
      itemBuilder: (context, index) => ArticleCard(
        article: articles[index],
      ),
    );
  }
}
