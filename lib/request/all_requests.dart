import 'package:http/http.dart' as http;

class Api {
  Future<http.Response> loginUser(
    String contact,
    String password,
  ) async {
    var body = {
      "contact": "$contact",
      "password": "$password",
    };
    print(body);
    return http.post(
      Uri.parse("http://crm.aagcrm.com/admin/sandbox/login_api"),
      body: body,
    );
  }

  Future<http.Response> getVehicleInfo(
    String custid,
    String carid,
  ) async {
    return http.get(
      Uri.parse(
          "http://crm.aagcrm.com/admin/sandbox/car_visits/$custid/$carid"),
    );
  }

  Future<http.Response> getVehicleDetails(
      String custid, String carid, String vid) async {
    return http.get(
      Uri.parse(
          "http://crm.aagcrm.com/admin/sandbox/car_visit_detail/$custid/$carid/$vid"),
    );
  }
}
