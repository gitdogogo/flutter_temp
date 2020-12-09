import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:huibobo/utils/http.dart';

class Counter with ChangeNotifier {
  int count = 0;
  String input = '';
  void increment(c) async {
    Response response = await Http.getInstance().get('http://www.baidu.com');
    print(response.data);
    this.count = response.statusCode;
    this.input = c;
    notifyListeners();
  }
}
