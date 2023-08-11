import 'package:flutter_articles/models/author.dart';

class DummyAuthor {
  static const Author dummyAuthor1 = Author(name: 'ivan');

  static const Author dummyAuthor2 = Author(name: 'sofi');

  static const Map<String, dynamic> dummyRawAuthor1 = {
    'name': 'ivan',
  };

  static const Map<String, dynamic> dummyRawAuthor2 = {
    'name': 'sofi',
  };
}
