// To parse this JSON data, do
//
//     final ProfileModel = ProfileModelFromJson(jsonString);

import 'dart:convert';

ProfileModel profileModelFromJson(String str) =>
    ProfileModel.fromJson(json.decode(str));

String profileModelToJson(ProfileModel data) => json.encode(data.toJson());

class ProfileModel {
  ProfileModel({
    required this.statusCode,
    required this.msg,
    required this.customerData,
    required this.allVechiles,
  });

  int statusCode;
  String msg;
  CustomerData customerData;
  AllVechiles allVechiles;

  factory ProfileModel.fromJson(dynamic json) => ProfileModel(
        statusCode: json["status_code"],
        msg: json["msg"],
        customerData: CustomerData.fromJson(json["customer_data"]),
        allVechiles: AllVechiles.fromJson(json["all_vechiles"]),
      );

  Map<String, dynamic> toJson() => {
        "status_code": statusCode,
        "msg": msg,
        "customer_data": customerData.toJson(),
        "all_vechiles": allVechiles.toJson(),
      };
}

class AllVechiles {
  AllVechiles({
    required this.statusCode,
    required this.msg,
    required this.vechiles,
  });

  int statusCode;
  String msg;
  List<Vechile> vechiles;

  factory AllVechiles.fromJson(Map<String, dynamic> json) => AllVechiles(
        statusCode: json["status_code"],
        msg: json["msg"],
        vechiles: List<Vechile>.from(
            json["vechiles"].map((x) => Vechile.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status_code": statusCode,
        "msg": msg,
        "vechiles": List<dynamic>.from(vechiles.map((x) => x.toJson())),
      };
}

class Vechile {
  Vechile({
    required this.carId,
    required this.carMakeName,
    required this.carMakeLogo,
    required this.carModelName,
    required this.carModelImage,
    required this.plateNo,
    required this.vechileCurrentVisitData,
    required this.vechileLastVisitData,
  });

  String carId;
  String carMakeName;
  String carMakeLogo;
  String carModelName;
  String carModelImage;
  String plateNo;
  VechileTVisitData vechileCurrentVisitData;
  VechileTVisitData vechileLastVisitData;

  factory Vechile.fromJson(Map<String, dynamic> json) => Vechile(
        carId: json["car_id"],
        carMakeName: json["car_make_name"],
        carMakeLogo: json["car_make_logo"],
        carModelName: json["car_model_name"],
        carModelImage: json["car_model_image"],
        plateNo: json["plate_no"],
        vechileCurrentVisitData:
            VechileTVisitData.fromJson(json["vechile_current_visit_data"]),
        vechileLastVisitData:
            VechileTVisitData.fromJson(json["vechile_last_visit_data"]),
      );

  Map<String, dynamic> toJson() => {
        "car_id": carId,
        "car_make_name": carMakeName,
        "car_make_logo": carMakeLogo,
        "car_model_name": carModelName,
        "car_model_image": carModelImage,
        "plate_no": plateNo,
        "vechile_current_visit_data": vechileCurrentVisitData.toJson(),
        "vechile_last_visit_data": vechileLastVisitData.toJson(),
      };
}

class VechileTVisitData {
  VechileTVisitData({
    this.statusCode,
    this.msg,
    this.arrivalDate,
    this.promisedDate,
    this.insurance,
    this.task,
    this.status,
    this.deliveryDate,
  });

  int? statusCode;
  String? msg;
  DateTime? arrivalDate;
  DateTime? promisedDate;
  String? insurance;
  dynamic? task;
  String? status;
  DateTime? deliveryDate;

  factory VechileTVisitData.fromJson(Map<String, dynamic> json) =>
      VechileTVisitData(
        statusCode: json["status_code"],
        msg: json["msg"],
        arrivalDate: json["arrival_date"] == null
            ? DateTime.now()
            : DateTime.parse(json["arrival_date"]),
        promisedDate: json["promised_date"] == null
            ? DateTime.now()
            : DateTime.parse(json["promised_date"]),
        insurance: json["insurance"],
        task: json["task"] ?? "",
        status: json["status"],
        deliveryDate: json["delivery_date"] == null
            ? DateTime.now()
            : DateTime.parse(json["delivery_date"]),
      );

  Map<String, dynamic> toJson() => {
        "status_code": statusCode,
        "msg": msg,
        "arrival_date": arrivalDate == null
            ? null
            : "${arrivalDate?.year.toString().padLeft(4, '0')}-${arrivalDate?.month.toString().padLeft(2, '0')}-${arrivalDate?.day.toString().padLeft(2, '0')}",
        "promised_date": promisedDate == null
            ? null
            : "${promisedDate?.year.toString().padLeft(4, '0')}-${promisedDate?.month.toString().padLeft(2, '0')}-${promisedDate?.day.toString().padLeft(2, '0')}",
        "insurance": insurance == null ? null : insurance,
        "task": task,
        "status": status == null ? null : status,
        "delivery_date": deliveryDate == null
            ? null
            : "${deliveryDate?.year.toString().padLeft(4, '0')}-${deliveryDate?.month.toString().padLeft(2, '0')}-${deliveryDate?.day.toString().padLeft(2, '0')}",
      };
}

class CustomerData {
  CustomerData({
    required this.customerId,
    required this.companyId,
    required this.name,
    required this.contact,
    required this.email,
  });

  String customerId;
  String companyId;
  String name;
  String contact;
  String email;

  factory CustomerData.fromJson(Map<String, dynamic> json) => CustomerData(
        customerId: json["customer_id"],
        companyId: json["company_id"],
        name: json["name"],
        contact: json["contact"],
        email: json["email"],
      );

  Map<String, dynamic> toJson() => {
        "customer_id": customerId,
        "company_id": companyId,
        "name": name,
        "contact": contact,
        "email": email,
      };
}
