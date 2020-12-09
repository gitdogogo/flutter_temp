import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:huibobo/providers.dart';
import 'package:huibobo/router/index.dart';

void main() {
  runApp(App());
}

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
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
      routes: routes,
      // onGenerateRoute: Route1.router.generator,
    );
  }
}
