import 'package:flutter/material.dart';

class Layout extends StatefulWidget {
  final Widget web;
  final Widget mini;
  final Widget native;
  const Layout({
    Key? key,
    required this.web,
    required this.mini,
    required this.native,
  }) : super(key: key);

  @override
  State<Layout> createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  @override
  Widget build(BuildContext context) {
    // var width = MediaQuery.of(context).size.width;
    return LayoutBuilder(builder: (context, constraints) {
      return constraints.maxWidth <= 600
          ? widget.native
          : constraints.maxWidth > 600 && constraints.maxWidth < 1000
              ? widget.mini
              : widget.web;
    });
  }
}
