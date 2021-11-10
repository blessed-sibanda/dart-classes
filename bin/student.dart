class Student {
  Student(this.firstName, this.lastName, this.grade);
  final String firstName;
  final String lastName;
  int grade;

  @override
  String toString() {
    return '$firstName $lastName --> $grade';
  }
}
