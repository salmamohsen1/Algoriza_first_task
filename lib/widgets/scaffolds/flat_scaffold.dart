import 'package:flutter/material.dart';

class FlatScaffold extends StatelessWidget {
  final Widget body;
  final Color? backgroundColor;
  const FlatScaffold({Key? key, required this.body, this.backgroundColor})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor ?? Colors.white,
        body: body,
      ),
    );
  }
}
