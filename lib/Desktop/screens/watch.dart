import 'package:flutter/material.dart';

class Watch extends StatefulWidget {
  const Watch({ Key? key }) : super(key: key);

  @override
  State<Watch> createState() => _WatchState();
}

class _WatchState extends State<Watch> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
    );
  }
}