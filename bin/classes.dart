void main(List<String> arguments) {
  final user = User(45, 'Blessed Sibanda');
  print(user);
  print(user.toJson());
  final anonymousUser = User.anonymous();
  print(anonymousUser);
}

class User {
  User(this.id, this.name);

  User.anonymous() {
    id = 0;
    name = 'anonymous';
  }

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
