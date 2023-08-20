import 'package:flutter_articles/models/article.dart';
import 'package:flutter_test/flutter_test.dart';

import '../dummy-data/dummy_articles.dart';

void main() {
  group('Article model tests', () {
    test('Support Value Equality', () {
      expect(DummyArticles.dummyArticle1, isNot(DummyArticles.dummyArticle2));
      expect(DummyArticles.dummyArticle1, equals(DummyArticles.dummyArticle1));
    });

    test('fromJson returns correct model', () {
      expect(
        Article.fromJson(DummyArticles.dummyRawArticle1),
        equals(DummyArticles.dummyArticle1),
      );
      expect(
        Article.fromJson(DummyArticles.dummyRawArticle2),
        isNot(DummyArticles.dummyArticle1),
      );
    });
  });
}
