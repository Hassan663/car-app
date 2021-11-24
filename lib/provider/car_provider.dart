import 'dart:convert';
import 'package:car_app/model/car_visit_model.dart';
import 'package:car_app/model/visit_details_model.dart';
import 'package:car_app/request/all_requests.dart';
import 'package:car_app/utils/dashbordModel.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CarDatileProvider with ChangeNotifier {
  CarVisitModel? carVisitModel;
  VisitDetailsModel? vdm;

  Future<CarVisitModel?> fetchVehicle(
    custid,
    carid,
  ) async {
    await Api()
        .getVehicleInfo(
      custid,
      carid,
    )
        .then((data) {
      // print("STATUS CODE =>" + data.statusCode.toString());
      // print("DATA  " + data.body.toString().toUpperCase());
      var response = json.decode(data.body);
      print(response['status_code']);
      if (response['status_code'] == 200) {
        DashBordModel.carVisitModel =
            CarVisitModel.fromJson(json.decode(data.body));
        carVisitModel = CarVisitModel.fromJson(json.decode(data.body));
        print(DashBordModel.carVisitModel!.msg.toString());
        DashBordModel.showMessageSuccess(data.statusCode.toString());
      } else if (data.statusCode == 404) {
        print(data.statusCode);
        DashBordModel.showMessageError(data.statusCode.toString());
      } else if (data.statusCode == 403) {
        // print("User Already Exist");
        DashBordModel.showMessageError(data.statusCode.toString());
      } else {
        Map<String, dynamic> result = json.decode(data.body);
        // print("Errors = " + result.toString());
        print(data.statusCode);
        DashBordModel.showMessageError(data.statusCode.toString());
      }
    });

    return carVisitModel;
  }

  Future<VisitDetailsModel?> fetchVehicleDatiles(custid, carid, vid) async {
    await Api()
        .getVehicleDetails(
      custid,
      carid,
      vid,
    )
        .then((data) {
      // print("STATUS CODE =>" + data.statusCode.toString());
      // print("DATA  " + data.body.toString().toUpperCase());
      var response = json.decode(data.body);
      print(response['status_code']);
      if (response['status_code'] == 200) {
        DashBordModel.vdm = VisitDetailsModel.fromJson(json.decode(data.body));
        vdm = VisitDetailsModel.fromJson(json.decode(data.body));
        DashBordModel.showMessageSuccess(data.statusCode.toString());
      } else {
        Map<String, dynamic> result = json.decode(data.body);
        // print("Errors = " + result.toString());
        print(data.statusCode);
        DashBordModel.showMessageError(data.statusCode.toString());
      }
    });

    return vdm;
  }
}
