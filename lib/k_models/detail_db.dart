class DetailDb {
  String? mt20id;
  String? prfnm;
  String? prfpdfrom;
  String? prfpdto;
  String? prfcast;
  String? prfruntime;
  String? prfage;
  String? entrpsnmP;
  String? entrpsnmA;
  String? entrpsnmH;
  String? entrpsnmS;
  String? pcseguidance;
  String? poster;
  String? sty;
  String? genrenm;
  String? prfstate;
  String? openrun;
  String? dtguidance;
  Styurls? styurls;
  String? mt10id;
  String? prfcrew;
  String? fcltynm;

  DetailDb({
    this.mt20id,
    this.prfnm,
    this.prfpdfrom,
    this.prfpdto,
    this.prfcast,
    this.prfruntime,
    this.prfage,
    this.entrpsnmP,
    this.entrpsnmA,
    this.entrpsnmH,
    this.entrpsnmS,
    this.pcseguidance,
    this.poster,
    this.sty,
    this.genrenm,
    this.prfstate,
    this.openrun,
    this.dtguidance,
    this.styurls,
    this.mt10id,
    this.prfcrew,
    this.fcltynm,
  });

  factory DetailDb.fromJson(Map<String, dynamic> json) => DetailDb(
        mt20id: json["mt20id"],
        prfnm: json["prfnm"],
        prfpdfrom: json["prfpdfrom"],
        prfpdto: json["prfpdto"],
        prfcast: json["prfcast"],
        prfruntime: json["prfruntime"],
        prfage: json["prfage"],
        entrpsnmP: json["entrpsnmP"],
        entrpsnmA: json['entrpsnmA'],
        entrpsnmH: json['entrpsnmH'],
        entrpsnmS: json['entrpsnmS'],
        pcseguidance: json["pcseguidance"],
        poster: json["poster"],
        sty: json["sty"],
        genrenm: json["genrenm"],
        prfstate: json["prfstate"],
        openrun: json["openrun"],
        dtguidance: json["dtguidance"],
        mt10id: json['mt10id'],
        prfcrew: json['prfcrew'],
        fcltynm: json['fcltynm'],
        styurls: Styurls.fromJson(json["styurls"]),
      );

  Map<String, dynamic> toJson() => {
        "mt20id": mt20id,
        "prfnm": prfnm,
        "prfpdfrom": prfpdfrom,
        "prfpdto": prfpdto,
        "prfcast": prfcast,
        "prfruntime": prfruntime,
        "prfage": prfage,
        "entrpsnmP": entrpsnmP,
        "entrpsnmA": entrpsnmA,
        "entrpsnmH": entrpsnmH,
        "entrpsnmS": entrpsnmS,
        "pcseguidance": pcseguidance,
        "poster": poster,
        "sty": sty,
        "genrenm": genrenm,
        "prfstate": prfstate,
        "openrun": openrun,
        "dtguidance": dtguidance,
        "mt10id": mt10id,
        "prfcrew": prfcrew,
        "fcltynm": fcltynm,
        "styurls": styurls!.toJson(),
      };
}

class Styurls {
  String? styurl;
  Styurls({
    this.styurl,
  });

  factory Styurls.fromJson(Map<String, dynamic> json) => Styurls(
        styurl: json['styurl'],
      );

  Map<String, dynamic> toJson() => {
        'styurl': styurl,
      };
}
