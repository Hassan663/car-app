import 'dart:convert';

import 'package:car_app/model/profile_model.dart';
import 'package:car_app/request/all_requests.dart';
import 'package:car_app/utils/dashbordModel.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ProfileProvider with ChangeNotifier {
  ProfileModel? profileModel;
  CustomerData? customerData;
  AllVechiles? allVechiles;

  Future<CustomerData?> loginresponse(
    contact,
    password,
  ) async {
    await Api()
        .loginUser(
      contact,
      password,
    )
        .then((data) {
      // print("STATUS CODE" + data.statusCode.toString());
      // print("DATA  " + data.body.toString());
      if (data.statusCode == 200) {
        DashBordModel.customerData = customerData =
            ProfileModel.fromJson(json.decode(data.body)).customerData;
        DashBordModel.allVechiles = allVechiles =
            ProfileModel.fromJson(json.decode(data.body)).allVechiles;

        DashBordModel.showMessageSuccess(data.statusCode.toString());
      } else if (data.statusCode == 404) {
        DashBordModel.showMessageError(data.statusCode.toString());

        print(data.statusCode);
      } else if (data.statusCode == 403) {
        DashBordModel.showMessageError(data.statusCode.toString());

      //  print("Forbidden : ${data.statusCode}");
      } else {
        DashBordModel.showMessageError(data.statusCode.toString());
        // Map<String, dynamic> result = json.decode(data.body);
        // print("Errors = " + result.toString());
        // print("Errors : ${data.statusCode}");
      }
    });

    return customerData;
  }
}
