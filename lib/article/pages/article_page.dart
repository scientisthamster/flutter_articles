import 'package:flutter/material.dart';
import 'package:flutter_articles/article/widgets/article_author.dart';
import 'package:flutter_articles/article/widgets/article_cover_image.dart';
import 'package:flutter_articles/article/widgets/article_info.dart';
import 'package:flutter_articles/article/widgets/article_tags.dart';
import 'package:flutter_articles/models/article.dart';
import 'package:flutter_articles/presentation/widgets/app_bar_flutter_logo.dart';
import 'package:flutter_articles/presentation/widgets/app_html.dart';
import 'package:flutter_articles/presentation/widgets/http_page_wrapper.dart';
import 'package:flutter_articles/repositories/article_repository.dart';
import 'package:provider/provider.dart';

class ArticlePage extends StatelessWidget {
  final int id;
  final String articleTitle;

  const ArticlePage({
    super.key,
    required this.id,
    required this.articleTitle,
  });

  @override
  Widget build(BuildContext context) {
    HttpArticleRepository articleRepository =
        Provider.of<HttpArticleRepository>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          articleTitle,
          style: const TextStyle(
            fontSize: 24.0,
          ),
        ),
        actions: const [AppBarFlutterLogo()],
      ),
      body: SafeArea(
        bottom: false,
        child: HttpPageWrapper(
          dataRequest: (bool forceRefrech) async =>
              await articleRepository.getArticle(id: id),
          contentBuilder: (BuildContext context, Article article) {
            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  if (article.coverImage != null)
                    ArticleCoverImage(url: article.coverImage!),
                  ArticleInfo(
                    article,
                    isMin: true,
                  ),
                  ArticleAuthor(article),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 17, vertical: 20),
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
      ),
    );
  }
}
