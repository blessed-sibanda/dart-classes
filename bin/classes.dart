void main(List<String> arguments) {
  final user = User(id: 45, name: 'Blessed Sibanda');
  print(user);
  print(user.toJson());
  final anonymousUser = User.anonymous();
  print(anonymousUser);
  print(anonymousUser.toJson());
}

class User {
  User({this.id = 0, this.name = 'anonymous'});

  User.anonymous() : this();

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
