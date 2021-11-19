// To parse this JSON data, do
//
//     final carVisitModel = carVisitModelFromJson(jsonString);

import 'dart:convert';

CarVisitModel carVisitModelFromJson(String str) =>
    CarVisitModel.fromJson(json.decode(str));

String carVisitModelToJson(CarVisitModel data) => json.encode(data.toJson());

class CarVisitModel {
  CarVisitModel({
    required this.statusCode,
    required this.msg,
    required this.allVechileVisits,
  });

  int statusCode;
  String msg;
  List<AllVechileVisit> allVechileVisits;

  factory CarVisitModel.fromJson(Map<String, dynamic> json) => CarVisitModel(
        statusCode: json["status_code"],
        msg: json["msg"],
        allVechileVisits: List<AllVechileVisit>.from(
            json["all_vechile_visits"].map((x) => AllVechileVisit.fromJson(x))),
      );

  get length => null;

  Map<String, dynamic> toJson() => {
        "status_code": statusCode,
        "msg": msg,
        "all_vechile_visits":
            List<dynamic>.from(allVechileVisits.map((x) => x.toJson())),
      };
}

class AllVechileVisit {
  AllVechileVisit({
    required this.arrivalDate,
    required this.promisedDate,
    required this.deliveryDate,
    required this.insurance,
    required this.task,
    required this.status,
  });

  DateTime arrivalDate;
  DateTime promisedDate;
  DateTime deliveryDate;
  String insurance;
  dynamic task;
  String status;

  factory AllVechileVisit.fromJson(Map<String, dynamic> json) =>
      AllVechileVisit(
        arrivalDate: DateTime.parse(json["arrival_date"]),
        promisedDate: DateTime.parse(json["promised_date"]),
        deliveryDate: DateTime.parse(json["delivery_date"]),
        insurance: json["insurance"],
        task: json["task"] ?? "",
        status: json["status"],
      );

  Map<String, dynamic> toJson() => {
        "arrival_date":
            "${arrivalDate.year.toString().padLeft(4, '0')}-${arrivalDate.month.toString().padLeft(2, '0')}-${arrivalDate.day.toString().padLeft(2, '0')}",
        "promised_date":
            "${promisedDate.year.toString().padLeft(4, '0')}-${promisedDate.month.toString().padLeft(2, '0')}-${promisedDate.day.toString().padLeft(2, '0')}",
        "delivery_date":
            "${deliveryDate.year.toString().padLeft(4, '0')}-${deliveryDate.month.toString().padLeft(2, '0')}-${deliveryDate.day.toString().padLeft(2, '0')}",
        "insurance": insurance,
        "task": task,
        "status": status,
      };
}
