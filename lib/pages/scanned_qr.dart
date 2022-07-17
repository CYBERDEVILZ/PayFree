import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:pay_free/pages/qr_scanned_page.dart';

class ScannedQR extends StatefulWidget {
  const ScannedQR({Key? key, required this.url}) : super(key: key);
  final String url;

  @override
  State<ScannedQR> createState() => _ScannedQRState();
}

class _ScannedQRState extends State<ScannedQR> {
  bool proceed = false;
  @override
  Widget build(BuildContext context) {
    List<String> segments = widget.url.trim().replaceAll(RegExp(r"upi:\/\/pay\?"), "").split('&');
    String? pa;
    String? pn;
    for (String item in segments) {
      if (item.contains("pa=")) {
        pa = item.substring(
          3,
        );
      }
      if (item.contains("pn=")) {
        pn = item
            .substring(
              3,
            )
            .replaceAll("%20", " ");
      }
    }

    if (pa != null && pn != null) {
      proceed = true;
    } else {
      Fluttertoast.showToast(msg: "Some error occurred", backgroundColor: Colors.blue);
      Navigator.pop(context);
    }
    TextEditingController controller = TextEditingController();
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Text("UPI ID: $pa"), Image.asset("assets/paytm/upi.png", height: 17)]),
              const Divider(
                color: Colors.blue,
              ),
              const SizedBox(height: 20),
              const Text(
                "Amount",
                style: TextStyle(fontSize: 40),
              ),
              const SizedBox(height: 20),
              TextFormField(
                decoration: const InputDecoration(border: OutlineInputBorder()),
                controller: controller,
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                  onPressed: () {
                    if (controller.text.trim().isEmpty) {
                      Fluttertoast.showToast(msg: "Amount cannot be empty", backgroundColor: Colors.blue);
                    } else {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => QRScannedPage(amount: controller.text, upi: pa!, name: pn!))));
                    }
                  },
                  child: const Text("Pay")),
            ],
          ),
        ),
      ),
    );
  }
}
