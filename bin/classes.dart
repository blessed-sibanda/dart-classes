import 'user.dart';

void main(List<String> arguments) {
  const user = User(id: 45, name: 'Blessed Sibanda');
  print(user);
  print(user.toJson());
  const anonymousUser = User.anonymous();
  print(anonymousUser);
  print(anonymousUser.toJson());
}
