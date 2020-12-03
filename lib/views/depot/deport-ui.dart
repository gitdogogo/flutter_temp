import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_temp/components/provider_widget.dart';
import 'package:flutter_temp/model/counter.dart';
import 'package:flutter_temp/router/index.dart';

class DepotUI extends StatelessWidget {
  const DepotUI({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProviderWidget(
      model: Provider.of<Counter>(context),
      builder: (context, value, child) {
        return Column(
          children: <Widget>[
            Text('仓库页count${context.watch<Counter>().count}'),
            RaisedButton(
              child: Text('depot'),
              onPressed: () {
                Route1.navigateTo(context, Route1.detail);
              },
            )
          ],
        );
      },
    );
  }
}
