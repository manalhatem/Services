
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
myDio({
  @required String? url,
  @required String? methodType,
  @required dynamic dioBody,
  @required Map<String, dynamic>? dioHeaders,
  required BuildContext? context
}) async {
  var response;
    try {
      if (methodType == 'get') {
        response = await Dio()
            .get(
          url!,
          queryParameters: dioBody,
          options: Options(
              headers: dioHeaders,
              validateStatus: (int? status) => status! >= 200 && status <= 500),
        )
            .catchError((onError) {
              print(onError.toString());
        });
      } else if (methodType == 'post') {
        response = await Dio()
            .post(url!,
            data: dioBody,
            options: Options(
                headers: dioHeaders,
                validateStatus: (int? status) =>
                status! >= 200 && status <= 500))
            .catchError((onError) {
              print('Response is >>> ' + response.data.toString());
        });
      }
      //    print('Response is >>> ' + response.data.toString());
      print('Response is >>> ' + response.statusCode.toString());

      if (response.statusCode >= 200 && response.statusCode <= 299) {
        return responseMap(
            status: response.data['status'],
            message: response.data['message'],
            data: response.data['data']);
      }
      else if (response.statusCode >= 500) {
        return responseMap(
            status: false, message: "$response.statusCode");
      }

      else if (response.statusCode == 401 || response.statusCode == 302) {
        print("-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*");

      }
      else if (response.statusCode >= 400 && response.statusCode <= 499) {
        return responseMap(
            status: false, message: response.data['message'], data: response.data['data']);
      }
      else {
        return responseMap(status: false, message: 'No Data', data: null);
      }
    } catch (e) {
      print(e.toString());
    }

}

Map<dynamic, dynamic> responseMap(
    {bool? status, String? message, dynamic data }) {
  return {"status": status, "message": message.toString(), "data": data };
}