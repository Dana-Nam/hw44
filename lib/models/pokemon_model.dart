class Pokemon {
  final String name;
  final String imageUrl;
  final String type;
  final int height;
  final int weight;

  Pokemon({
    required this.name,
    required this.imageUrl,
    required this.type,
    required this.height,
    required this.weight,
  });

  factory Pokemon.fromJson(Map<String, dynamic> json) {
    return Pokemon(
      name: json['name'],
      imageUrl: json['sprites']['front_default'] ?? '',
      type: json['types'][0]['type']['name'],
      height: json['height'],
      weight: json['weight'],
    );
  }
}
