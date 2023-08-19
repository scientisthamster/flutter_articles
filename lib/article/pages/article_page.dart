import 'package:flutter/material.dart';
import 'package:flutter_articles/article/widgets/article_author.dart';
import 'package:flutter_articles/article/widgets/article_cover_image.dart';
import 'package:flutter_articles/article/widgets/article_info.dart';
import 'package:flutter_articles/article/widgets/article_tags.dart';
import 'package:flutter_articles/models/article.dart';
import 'package:flutter_articles/presentation/widgets/app_html.dart';
import 'package:flutter_articles/presentation/widgets/http_page_wrapper.dart';
import 'package:flutter_articles/repositories/article_repository.dart';
import 'package:provider/provider.dart';

class ArticlePage extends StatelessWidget {
  final int id;

  const ArticlePage({
    super.key,
    required this.id,
  });

  @override
  Widget build(BuildContext context) {
    HttpArticleRepository articleRepository =
        Provider.of<HttpArticleRepository>(context, listen: false);

    return Scaffold(
      body: HttpPageWrapper(
        dataRequest: () async => await articleRepository.getArticle(id: id),
        contentBuilder: (BuildContext context, Article article) {
          return SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                if (article.coverImage != null)
                  ArticleCoverImage(url: article.coverImage!),
                ArticleInfo(
                  article,
                  isMin: true,
                ),
                ArticleAuthor(article: article),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 17, vertical: 20),
                  child: Text(
                    article.title,
                    style: Theme.of(context).textTheme.headlineSmall,
                    textAlign: TextAlign.start,
                  ),
                ),
                ArticleTags(tags: article.tags),
                AppHtml(data: article.bodyHtml),
                const SizedBox(height: 100),
              ],
            ),
          );
        },
      ),
    );
  }
}
