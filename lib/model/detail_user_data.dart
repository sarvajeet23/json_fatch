import 'dart:ffi';

class Detailuserdata {
  late int id;
  late String name;
  late String username;
  late String email;
  late Address address;
  late String phone;
  late String website;
  late Company company;

  Detailuserdata({
    required this.id,
    required this.name,
    required this.username,
    required this.email,
    required this.address,
    required this.phone,
    required this.website,
    required this.company,
  });
  Detailuserdata.fromjson(Map<String, dynamic> json) {
    id = json["id"];
    name = json["name"];
    email = json["email"];
    address = Address.fromjson(json["address"]);
    phone = json["phone"];
    website = json["website"];
    company = Company.formjson(json["company"]);
  }
}

class Address {
  String? street;
  String? suite;
  String? city;
  String? zipcode;
  Geo? geo;

  Address({
    required this.street,
    required this.suite,
    required this.city,
    required this.zipcode,
    required this.geo,
  });
  Address.fromjson(Map<String, dynamic> json) {
    street = json["street"];
    suite = json["suite"];
    city = json["city"];
    zipcode = json["zipcode"];
    geo = Geo.fromjson(json["geo"]);
  }
}

class Geo {
  late String lat;
  late String lng;

  Geo({
    required this.lat,
    required this.lng,
  });
  Geo.fromjson(Map<String, dynamic> json) {
    lat = json["lat"];
    lng = json["lng"];
  }
}

class Company {
  String? name;
  String? catchPhrase;
  String? bs;

  Company({
    required this.name,
    required this.catchPhrase,
    required this.bs,
  });
  Company.formjson(Map<String, dynamic> json) {
    name = json["name"];
    catchPhrase = json["catchPhrase"];
  }
}
