import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:flutter_temp/model/counter.dart';

List<SingleChildWidget> providers = [
  ChangeNotifierProvider<Counter>(create: (_) => Counter()),
];
