import 'email.dart';
import 'sphere.dart';
import 'student.dart';
import 'user.dart';

void main(List<String> arguments) {
  const user = User(id: 4885, name: 'Blessed Sibanda');
  print(user);
  print(user.name);
  print(user.isBigId);
  print(user.toJson());
  const anonymousUser = User.anonymous();
  print(anonymousUser);
  print(anonymousUser.toJson());

  final ble = User.blessed();
  print(ble);

  final map = {'id': 10, 'name': 'Manda'};
  final manda = User.fromJson(map);
  print(manda);

  final myObject = MyClass();
  final anotherObject = myObject;
  print(myObject.myProperty);
  print(anotherObject.myProperty);

  anotherObject.myProperty = 34;
  print(myObject.myProperty);

  final email = Email();
  email.value = 'ble@example.com';
  final emailString = email.value;
  print(emailString);

  final value = SomeClass.myProperty;
  print(value);
  SomeClass.myMethod();

  final mySingleton = MySingleton();
  print(mySingleton);

  final bert = Student('Bert', 'White', 95);
  final ernie = Student('Ernie', 'Samson', 85);
  print(bert);
  print(ernie);

  final mySphere = Sphere(radius: 12);
  print(mySphere.volume.toStringAsFixed(2));
  print(mySphere.surfaceArea.toStringAsFixed(2));
}

class MySingleton {
  MySingleton._();
  static final MySingleton _instance = MySingleton._();
  factory MySingleton() => _instance;
}

class MyClass {
  var myProperty = 1;
}

class SomeClass {
  static int myProperty = 0;
  static void myMethod() {
    print('Hello, Dart!');
  }
}
