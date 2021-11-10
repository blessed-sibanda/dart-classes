void main(List<String> arguments) {
  final user = User()
    ..name = 'Blessed'
    ..id = 42;
  print(user);
  print(user.toJson());
}

class User {
  int id = 0;
  String name = '';

  String toJson() {
    return '{"id": "$id", "name": "$name"}';
  }

  @override
  String toString() {
    return 'User(id: $id, name: $name)';
  }
}
