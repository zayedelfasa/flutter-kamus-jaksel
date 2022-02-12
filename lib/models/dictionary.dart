class Dictionary {
  List<Records> records;

  Dictionary({
      this.records});

  Dictionary.fromJson(dynamic json) {
    if (json['records'] != null) {
      records = [];
      json['records'].forEach((v) {
        records.add(Records.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    if (records != null) {
      map['records'] = records.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

class Records {
  String id;
  String kata;
  String deskripsiKata;
  String contoh;
  bool isFavorite;

  Records({
      this.id, 
      this.kata, 
      this.deskripsiKata, 
      this.contoh, 
      this.isFavorite});

  Records.fromJson(dynamic json) {
    id = json['id'];
    kata = json['kata'];
    deskripsiKata = json['deskripsiKata'];
    contoh = json['contoh'];
    isFavorite = json['isFavorite'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['id'] = id;
    map['kata'] = kata;
    map['deskripsiKata'] = deskripsiKata;
    map['contoh'] = contoh;
    map['isFavorite'] = isFavorite;
    return map;
  }

}