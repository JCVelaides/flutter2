class HairCut {
  final String? haircut1;
  final String? haircut2;
  final String? haircut3;

  HairCut({this.haircut1, this.haircut2, this.haircut3});

  factory HairCut.fromJson(Map<Object?, dynamic> json) {
    return HairCut(
      haircut1: json['haircut1'],
      haircut2: json['haircut2'],
      haircut3: json['haircut3'],
    );
  }
}
