import 'package:flutter/material.dart';

class CallList extends StatefulWidget {
  const CallList({super.key});

  @override
  State<CallList> createState() => _CallListState();
}

class _CallListState extends State<CallList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Calls'),
      ),
    );
  }
}
