import 'package:flutter/material.dart';

class ScannedQR extends StatefulWidget {
  const ScannedQR({Key? key, required this.url}) : super(key: key);
  final String url;

  @override
  State<ScannedQR> createState() => _ScannedQRState();
}

class _ScannedQRState extends State<ScannedQR> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Enter amount")),
    );
  }
}
