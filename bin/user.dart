class User {
  const User({int id = 0, String name = 'anonymous'})
      : assert(id >= 0),
        _id = id,
        _name = name;

  const User.anonymous() : this();

  factory User.blessed() {
    return User(id: 1, name: 'Blessed');
  }

  factory User.fromJson(Map<String, dynamic> json) {
    final userId = json['id'] as int;
    final userName = json['name'] as String;
    return User(id: userId, name: userName);
  }

  final int _id;
  final String _name;
  bool get isBigId => _id > 1000;

  int get id => _id;
  String get name => _name;

  String toJson() {
    return '{"id": "$_id", "name": "$_name"}';
  }

  @override
  String toString() {
    return 'User(id: $_id, name: $_name)';
  }
}
