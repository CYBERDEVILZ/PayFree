import 'package:flutter/material.dart';
import 'package:pay_free/pages/fill_info_paytm.dart';
import 'package:pay_free/widgets/enter_amount.dart';
import 'package:pay_free/widgets/qr_code_scanner.dart';

class AmityPayZones extends StatelessWidget {
  const AmityPayZones({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
            child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 50),
                  const Text(
                    "Choose From our Trusted Pay Zones",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
                  ),
                  const SizedBox(height: 30),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => EnterAmount(cafeType: "Dej")));
                      },
                      child: const Text("Deja Brew Cafe")),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => EnterAmount(cafeType: "Bac")));
                      },
                      child: const Text("Back Mess")),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => EnterAmount(cafeType: "Mil")));
                      },
                      child: const Text("Military Mess")),
                  const SizedBox(height: 50),
                  ElevatedButton(
                    child: const Text(
                      "Or Scan QR Code...",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const QrCodeScanner()));
                    },
                  ),
                  const SizedBox(height: 50),
                  const Text(
                    "Or create custom interface...",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
                  ),
                  const SizedBox(height: 30),
                  FillInfoPayTM(),
                ]),
          ),
        )),
      ),
    );
  }
}
