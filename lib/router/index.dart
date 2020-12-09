import 'package:huibobo/views/depot/index.dart';
import 'package:huibobo/views/detail/index.dart';
import 'package:huibobo/views/home/index.dart';

// class Route1 {
//   static final FluroRouter router = FluroRouter();
//   static String home = '/';
//   static String depot = '/depot';
//   static String detail = '/detail';
//   static Map routes = {
//     home: Handler(
//         handlerFunc: (BuildContext context, Map<String, List<String>> params) {
//       return Home();
//     }),
//     depot: Handler(
//         handlerFunc: (BuildContext context, Map<String, List<String>> params) {
//       return Depot();
//     }),
//     detail: Handler(
//         handlerFunc: (BuildContext context, Map<String, List<String>> params) {
//       return Detail();
//     }),
//   };

//   static void init() {
//     router.notFoundHandler = Handler(
//         handlerFunc: (BuildContext context, Map<String, List<String>> params) {
//       print('ROUTE WAS NOT FOUND !!!');
//     });
//     routes.forEach((key, value) {
//       router.define(key, handler: value);
//     });
//   }

//   static navigateTo(BuildContext context, String path) {
//     router.navigateTo(context, path);
//   }
// }

var routes = {
  '/': (context) => Home(),
  '/depot': (context) => Depot(),
  '/detail': (context) => Detail(),
};
