import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:huibobo/components/provider_widget.dart';
import 'package:huibobo/model/counter.dart';

class HomeUI extends StatefulWidget {
  @override
  _HomeUIState createState() => _HomeUIState();
}

class _HomeUIState extends State<HomeUI> with TickerProviderStateMixin {
  Animation animation;
  AnimationController controller;
  Random random = Random();

  dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    controller = new AnimationController(
        duration: const Duration(milliseconds: 2000), vsync: this);
    final CurvedAnimation curve =
        new CurvedAnimation(parent: controller, curve: Curves.easeIn);
    animation = new Tween(begin: 0.0, end: 100.0).animate(curve);
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    return ProviderWidget(
      model: Provider.of<Counter>(context),
      child: Column(
        children: <Widget>[
          GrowTransition(child: new LogoWidget(), animation: animation),
          TextField(
            controller: controller,
          ),
          Text('${context.watch<Counter>().count} ${controller.text}'),
          RaisedButton(
            child: Text('count++'),
            onPressed: () {
              context.read<Counter>().increment(controller.text);
            },
          ),
          RaisedButton(
            child: Text('go depot'),
            onPressed: () {
              Navigator.pushNamed(context, '/depot',
                  arguments: {'id': 123, 'from': 'index'});
            },
          ),
        ],
      ),
    );
  }
}

class GrowTransition extends StatelessWidget {
  GrowTransition({this.child, this.animation});

  final Widget child;
  final Animation<double> animation;

  Widget build(BuildContext context) {
    return new Center(
      child: new AnimatedBuilder(
          animation: animation,
          builder: (BuildContext context, Widget child) {
            return new Container(
                height: animation.value, width: animation.value, child: child);
          },
          child: child),
    );
  }
}

class LogoWidget extends StatelessWidget {
  // Leave out the height and width so it fills the animating parent
  build(BuildContext context) {
    return new Container(
      margin: new EdgeInsets.symmetric(vertical: 10.0),
      child: new FlutterLogo(),
    );
  }
}
