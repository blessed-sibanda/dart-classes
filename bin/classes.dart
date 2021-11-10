void main(List<String> arguments) {
  final user = User(45, 'Blessed Sibanda');
  print(user);
  print(user.toJson());
  final anonymousUser = User.anonymous();
  print(anonymousUser);
  print(anonymousUser.toJson());
}

class User {
  User(this.id, this.name);

  User.anonymous() : this(0, 'anonymous');

  int id;
  String name;

  String toJson() {
    return '{"id": "$id", "name": "$name"}';
  }

  @override
  String toString() {
    return 'User(id: $id, name: $name)';
  }
}
