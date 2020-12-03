import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_temp/utils/http.dart';

class Counter with ChangeNotifier {
  int count = 0;
  void increment() async {
    Response response = await Http.getInstance().get('http://www.baidu.com');
    print(response.data);
    count = response.statusCode;
    notifyListeners();
  }
}
