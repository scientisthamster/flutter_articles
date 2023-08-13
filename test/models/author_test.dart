import 'package:flutter_articles/models/author.dart';
import 'package:flutter_test/flutter_test.dart';

import '../dummy-data/dummy_authors.dart';

void main() {
  group('Author model tests', () {
    test('Support Value Equality', () {
      expect(DummyAuthors.dummyAuthor1, isNot(DummyAuthors.dummyAuthor2));
      expect(DummyAuthors.dummyAuthor1, equals(DummyAuthors.dummyAuthor1));
    });

    test('fromJson returns correct model', () {
      expect(Author.fromJson(DummyAuthors.dummyRawAuthor1), equals(DummyAuthors.dummyAuthor1));
      expect(Author.fromJson(DummyAuthors.dummyRawAuthor2), isNot(DummyAuthors.dummyAuthor1));
    });
  });
}