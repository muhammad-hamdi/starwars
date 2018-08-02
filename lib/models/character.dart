class Character {
  final String name;
  final int height;
  final int mass;

  Character(this.name, this.height, this.mass);

  factory Character.addFromJson(Map<String, dynamic> char) {
    return new Character(
        char['name'],
        char['height'],
        char['mass']
    );
  }
}