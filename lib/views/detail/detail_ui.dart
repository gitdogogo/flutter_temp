import 'package:flutter/material.dart';

class DetailUI extends StatefulWidget {
  @override
  _DetailUIState createState() => _DetailUIState();
}

class _DetailUIState extends State<DetailUI> {
  @override
  Widget build(BuildContext context) {
    Map args = ModalRoute.of(context).settings.arguments;
    return Column(
      children: <Widget>[
        Text('详情页 ${args['id']} ${args['from']}'),
      ],
    );
  }
}
