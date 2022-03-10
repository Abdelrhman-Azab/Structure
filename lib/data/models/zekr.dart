class Zekr {
  Zekr({required this.zekr, required this.repeate, required this.bless});
  String? zekr;
  int? repeate;
  String? bless;

  factory Zekr.fromJson(Map<String, dynamic> json) {
    return Zekr(
        zekr: json["zekr"], repeate: json["repeate"], bless: json["bless"]);
  }
}
