class Kingdom {
  final String raje;
  final String location;
  final String senapati;
  final int noOfKills;
  final int noWar;
  final String dharm;
  final String flag;

  const Kingdom({
    required this.raje,
    required this.location,
    required this.senapati,
    required this.noOfKills,
    required this.noWar,
    required this.dharm,
    required this.flag,
  });

  Kingdom copyWith({
    String? raje,
    String? location,
    String? senapati,
    int? noOfKills,
    int? noWar,
    String? dharm,
    String? flag,
  }) =>
      Kingdom(
          raje: raje ?? this.raje,
          location: location ?? this.location,
          senapati: senapati ?? this.senapati,
          noOfKills: noOfKills ?? this.noOfKills,
          noWar: noWar ?? this.noWar,
          dharm: dharm ?? this.dharm,
          flag: flag ?? this.flag);

  //it will geting the all values from which objects this method was called
  Kingdom clone() => copyWith(
        raje: raje,
        location: location,
        senapati: senapati,
        noOfKills: noOfKills,
        noWar: noWar,
        dharm: dharm,
        flag: flag,
      );

  @override
  String toString() =>
      "Kingdom{raje: $raje, location: $location, senapati: $senapati, noOfKills: $noOfKills, noWar: $noWar, dharm: $dharm, flag: $flag}";
}

void main() {
  Kingdom rajya = Kingdom(
      raje: "Chatrapati Shivaji maharaj",
      location: "Maharastra",
      senapati: "Netoji Palkar",
      noOfKills: 111,
      noWar: 127,
      dharm: "Sanatan -Hindu",
      flag: "Bhagava");
  Kingdom sameRajya = rajya.clone();
  print(rajya);
  print(sameRajya);
  rajya = rajya.copyWith(
    location: "all universe",
  );
  print(rajya.location);
  print(sameRajya.location);
}
