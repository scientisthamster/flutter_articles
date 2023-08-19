import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_articles/models/article.dart';
import 'package:flutter_articles/services/http/http_service.dart';

abstract class ArticleRepository {
  Future<List<Article>> getArticles({
    List<String>? tags,
    String? username,
    bool forceRefresh = false,
  });

  Future<Article> getArticle({
    required int id,
  });
}

class HttpArticleRepository with ChangeNotifier implements ArticleRepository {
  final HttpService httpService;

  HttpArticleRepository(this.httpService);

  @override
  Future<List<Article>> getArticles({
    List<String>? tags,
    String? username,
    bool forceRefresh = false,
  }) async {
    Map<String, dynamic> queryParameters = {};
    if (username != null) {
      queryParameters['username'] = username;
    } else {
      // Only add tags query param if the username is null
      // Because specifying the username with the tags gives priority to the tags
      // and doesn't return only the username's articles
      queryParameters['tag'] = tags?.join(', ');
    }

    final Response response = await httpService.get(
      'articles',
      queryParameters: queryParameters,
    );

    return List<Article>.from(
      response.data.map((json) => Article.fromJson(json)),
    );
  }

  @override
  Future<Article> getArticle({required int id}) async {
    final Response response = await httpService.get('articles/$id');
    return Article.fromJson(response.data);
  }
}
