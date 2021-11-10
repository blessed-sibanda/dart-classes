void main(List<String> arguments) {
  final user = User()
    ..name = 'Blessed'
    ..id = 42;
  print(user);
  print(user.toJson());

  final password1 = Password()..value = 'foobar';
  print(password1);
  print(password1.isValid());

  final password2 = Password()..value = 'some-huge-secret';
  print(password2);
  print(password2.isValid());
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

class Password {
  String value = '';

  bool isValid() {
    return value.length > 8;
  }

  @override
  String toString() {
    return value;
  }
}
