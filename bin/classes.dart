import 'user.dart';

void main(List<String> arguments) {
  final user = User(id: 45, name: 'Blessed Sibanda');
  print(user);
  print(user.toJson());
  final anonymousUser = User.anonymous();
  print(anonymousUser);
  print(anonymousUser.toJson());
}
