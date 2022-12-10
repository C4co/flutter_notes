class Planet {
  late final int id;
  late final String name;
  late final int age;

  Planet({
    required this.id,
    required this.name,
    required this.age,
  });

  Planet.fromMap(Map<String, dynamic> result)
    : id = result['id'],
      name = result['name'],
      age = result['age'];

  Map<String, Object> toMap(){
    return {
      'id': id,
      'name': name,
      'age': age
    };
  }

}
