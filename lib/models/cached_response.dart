const Duration maxCachedAge = Duration(hours: 1);

class CachedResponse {
  final dynamic response;
  final DateTime age;

  const CachedResponse({
    required this.response,
    required this.age,
  });

  bool get isValid => DateTime.now().isBefore(age.add(maxCachedAge));

  factory CachedResponse.fromJson(Map<String, dynamic> json) {
    return CachedResponse(
      response: json['responseData'],
      age: DateTime.parse(json['age']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'responseData': response,
      'age': age.toString(),
    };
  }
}
