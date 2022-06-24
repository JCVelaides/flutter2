class Barber {
  final String? name;
  final String? lastname;
  final String? nickname;
  final int? yearExperience;

  Barber({this.name, this.lastname, this.nickname, this.yearExperience});

  factory Barber.fromJson(Map<Object?, dynamic> json) {
    return Barber(
      name: json['name'],
      lastname: json['lastname'],
      nickname: json['nickname'],
      yearExperience: json['yearExperience'],
    );
  }
}
