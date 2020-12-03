import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_temp/components/provider_widget.dart';
import 'package:flutter_temp/model/counter.dart';
import 'package:flutter_temp/router/index.dart';

class HomeUI extends StatelessWidget {
  const HomeUI({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProviderWidget(
      model: Provider.of<Counter>(context),
      child: Column(
        children: <Widget>[
          Text('${context.watch<Counter>().count}'),
          RaisedButton(
            child: Text('count++'),
            onPressed: () {
              context.read<Counter>().increment();
            },
          ),
          RaisedButton(
            child: Text('go depot'),
            onPressed: () {
              Route1.navigateTo(context, Route1.depot);
            },
          ),
        ],
      ),
    );
  }
}
