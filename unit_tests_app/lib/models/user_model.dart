class UserModel {
  String name;
  int age;
  String email;
  double height;

  UserModel({
    required this.name,
    required this.age,
    required this.height,
    required this.email,
  });

  Map<String, dynamic> toJson() {
    return {'name': name, 'age': age, 'email': email, "height": height};
  }

  factory UserModel.fromjson(Map<String, dynamic> json) {
    return UserModel(
      name: json['name'],
      age: json['age'],
      height: json['height'],
      email: json['email'],
    );
  }
}
