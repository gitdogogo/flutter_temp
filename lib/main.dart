import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_temp/providers.dart';
import 'package:flutter_temp/router/index.dart';
import 'package:flutter_temp/views/home/index.dart';

void main() {
  runApp(App());
}

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  _AppState() {
    Route1.init();
  }
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: providers,
      child: MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'router',
      initialRoute: '/',
      onGenerateRoute: Route1.router.generator,
    );
  }
}
