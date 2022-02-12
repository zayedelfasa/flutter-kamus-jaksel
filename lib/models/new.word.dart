class NewWord {
  List<KataBaru> kataBaru;

  NewWord({
      this.kataBaru});

  NewWord.fromJson(dynamic json) {
    if (json['kataBaru'] != null) {
      kataBaru = [];
      json['kataBaru'].forEach((v) {
        kataBaru.add(KataBaru.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    if (kataBaru != null) {
      map['kataBaru'] = kataBaru.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

class KataBaru {
  String id;
  String kata;
  String deskripsiKata;
  String contoh;
  String lastUpdate;

  KataBaru({
      this.id, 
      this.kata, 
      this.deskripsiKata, 
      this.contoh, 
      this.lastUpdate});

  KataBaru.fromJson(dynamic json) {
    id = json['id'];
    kata = json['kata'];
    deskripsiKata = json['deskripsi_kata'];
    contoh = json['contoh'];
    lastUpdate = json['lastUpdate'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['id'] = id;
    map['kata'] = kata;
    map['deskripsi_kata'] = deskripsiKata;
    map['contoh'] = contoh;
    map['lastUpdate'] = lastUpdate;
    return map;
  }

}