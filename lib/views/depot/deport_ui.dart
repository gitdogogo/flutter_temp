import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:huibobo/components/provider_widget.dart';
import 'package:huibobo/model/counter.dart';

class DepotUI extends StatelessWidget {
  const DepotUI({Key key}) : super(key: key);
  @override
  @override
  Widget build(BuildContext context) {
    Map args = ModalRoute.of(context).settings.arguments;
    return ProviderWidget(
      model: Provider.of<Counter>(context),
      builder: (context, value, child) {
        return Column(
          children: <Widget>[
            Text(
                'id:${args["id"]} from:${args["from"]}仓库页count${context.watch<Counter>().count} ${context.watch<Counter>().input}'),
            RaisedButton(
              child: Text('depot'),
              onPressed: () {
                Navigator.pushNamed(context, '/detail', arguments: {
                  'id': context.read<Counter>().count,
                  'from': 'depot'
                });
              },
            )
          ],
        );
      },
    );
  }
}
