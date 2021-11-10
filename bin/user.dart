class User {
  const User({this.id = 0, this.name = 'anonymous'}) : assert(id >= 0);

  const User.anonymous() : this();

  factory User.blessed() {
    return User(id: 1, name: 'Blessed');
  }

  factory User.fromJson(Map<String, dynamic> json) {
    final userId = json['id'] as int;
    final userName = json['name'] as String;
    return User(id: userId, name: userName);
  }

  final int id;
  final String name;
  bool get isBigId => id > 1000;

  String toJson() {
    return '{"id": "$id", "name": "$name"}';
  }

  @override
  String toString() {
    return 'User(id: $id, name: $name)';
  }
}
