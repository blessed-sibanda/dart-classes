import 'user.dart';

void main(List<String> arguments) {
  const user = User(id: 45, name: 'Blessed Sibanda');
  print(user);
  print(user.toJson());
  const anonymousUser = User.anonymous();
  print(anonymousUser);
  print(anonymousUser.toJson());

  final ble = User.blessed();
  print(ble);

  final map = {'id': 10, 'name': 'Manda'};
  final manda = User.fromJson(map);
  print(manda);
}
