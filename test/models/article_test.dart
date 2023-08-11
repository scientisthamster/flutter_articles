import 'package:flutter_articles/models/article.dart';
import 'package:flutter_test/flutter_test.dart';

import '../dummy-data/dummy_articles.dart';

void main() {
  group('Article model tests', () {
    test('Support Value Equality', () {
      expect(DummyArticle.dummyArticle1, isNot(DummyArticle.dummyArticle2));
      expect(DummyArticle.dummyArticle1, equals(DummyArticle.dummyArticle1));
    });

    test('fromJson returns correct model', () {
      expect(
        Article.fromJson(DummyArticle.dummyRawArticle1),
        equals(DummyArticle.dummyArticle1),
      );
      expect(
        Article.fromJson(DummyArticle.dummyRawArticle2),
        isNot(DummyArticle.dummyArticle1),
      );
    });
  });
}
