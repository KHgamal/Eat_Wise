enum Gender { male, female }
enum Activity{
  sedentary,
lightlyActive,
moderatelyActive,
veryActive,
}

class UserInfo {
  final Gender gender;
  int height;
  double weight;
  final DateTime birthDate;
  final String name;
  Activity activity;

  UserInfo(
      {required this.name,
      required this.gender,
      required this.height,
      required this.weight,
      required this.birthDate,
      required this.activity});
}
