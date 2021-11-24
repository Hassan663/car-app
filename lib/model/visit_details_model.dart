// To parse this JSON data, do
//
//     final visitDetailsModel = visitDetailsModelFromJson(jsonString);

import 'dart:convert';

VisitDetailsModel visitDetailsModelFromJson(String str) =>
    VisitDetailsModel.fromJson(json.decode(str));

String visitDetailsModelToJson(VisitDetailsModel data) =>
    json.encode(data.toJson());

class VisitDetailsModel {
  VisitDetailsModel({
    required this.statusCode,
    required this.msg,
    required this.visitDetail,
  });

  int statusCode;
  String msg;
  List<VisitDetail> visitDetail;

  factory VisitDetailsModel.fromJson(Map<String, dynamic> json) =>
      VisitDetailsModel(
        statusCode: json["status_code"],
        msg: json["msg"],
        visitDetail: List<VisitDetail>.from(
            json["visit_detail"].map((x) => VisitDetail.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status_code": statusCode,
        "msg": msg,
        "visit_detail": List<dynamic>.from(visitDetail.map((x) => x.toJson())),
      };
}

class VisitDetail {
  VisitDetail({
    required this.description,
    required this.dateAdded,
  });

  String description;
  String dateAdded;

  factory VisitDetail.fromJson(Map<String, dynamic> json) => VisitDetail(
        description: json["description"],
        dateAdded: json["date_added"],
      );

  Map<String, dynamic> toJson() => {
        "description": description,
        "date_added": dateAdded,
      };
}
