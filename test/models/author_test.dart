import 'package:flutter_articles/models/author.dart';
import 'package:flutter_test/flutter_test.dart';

import '../dummy-data/dummy_author.dart';

void main() {
  group('Author model tests', () {
    test('Support Value Equality', () {
      expect(DummyAuthor.dummyAuthor1, isNot(DummyAuthor.dummyAuthor2));
      expect(DummyAuthor.dummyAuthor1, equals(DummyAuthor.dummyAuthor1));
    });

    test('fromJson returns correct model', () {
      expect(Author.fromJson(DummyAuthor.dummyRawAuthor1), equals(DummyAuthor.dummyAuthor1));
      expect(Author.fromJson(DummyAuthor.dummyRawAuthor2), isNot(DummyAuthor.dummyAuthor1));
    });
  });
}