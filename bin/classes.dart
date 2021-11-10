void main(List<String> arguments) {
  final user = User(id: 45, name: 'Blessed Sibanda');
  print(user);
  print(user.toJson());
  final anonymousUser = User.anonymous();
  print(anonymousUser);
  print(anonymousUser.toJson());
}

class User {
  User({int id = 0, String name = 'anonymous'})
      : _id = id,
        _name = name;

  User.anonymous() : this();

  int _id;
  String _name;

  String toJson() {
    return '{"id": "$_id", "name": "$_name"}';
  }

  @override
  String toString() {
    return 'User(id: $_id, name: $_name)';
  }
}
