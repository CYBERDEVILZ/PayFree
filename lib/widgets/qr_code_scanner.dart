import 'dart:io';

import 'package:flutter/material.dart';
import 'package:pay_free/pages/scanned_qr.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class QrCodeScanner extends StatefulWidget {
  const QrCodeScanner({Key? key}) : super(key: key);

  @override
  State<QrCodeScanner> createState() => _QrCodeScannerState();
}

class _QrCodeScannerState extends State<QrCodeScanner> {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  QRViewController? controller;

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(body: Stack(alignment: Alignment.center, children: [buildQRView(context)])));
  }

  @override
  void reassemble() {
    super.reassemble();
    if (Platform.isAndroid) {
      controller!.pauseCamera();
    }
    controller!.resumeCamera();
  }

  Widget buildQRView(BuildContext context) => QRView(
      key: qrKey,
      overlay: QrScannerOverlayShape(
          cutOutSize: MediaQuery.of(context).size.width * 0.8,
          borderWidth: 10,
          borderColor: Colors.blue,
          borderLength: MediaQuery.of(context).size.width * 0.4,
          borderRadius: 20),
      onQRViewCreated: (QRViewController controller) {
        this.controller = controller;
        setState(() {});
        controller.scannedDataStream.listen((event) {
          String? url = event.code;
          if (url != null) {
            if (url.contains("upi://pay")) {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: ((context) => ScannedQR(url: url))));
            }
          }
        });
      });
}
