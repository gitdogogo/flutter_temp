import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProviderWidget<T extends ChangeNotifier> extends StatefulWidget {
  @override
  _ProviderWidgetState<T> createState() => _ProviderWidgetState<T>();
  final T model;
  final Widget child;
  final Function(T) ready;
  final Widget Function(BuildContext context, T value, Widget child) builder;
  ProviderWidget({this.model, this.child, this.builder, this.ready});
}

class _ProviderWidgetState<T extends ChangeNotifier>
    extends State<ProviderWidget> {
  @override
  void initState() {
    if (widget.ready != null) {
      widget.ready(widget.model);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Widget child;
    if (widget.builder != null) {
      child = Consumer<T>(
        builder: widget.builder,
        child: widget.child,
      );
    } else {
      child = widget.child;
    }
    return ChangeNotifierProvider(create: (_) => widget.model, child: child);
  }
}
