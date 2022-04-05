import 'package:flutter/material.dart';
import 'package:pay_free/pages/paytm.dart';

class FillInfoPayTM extends StatelessWidget {
  FillInfoPayTM({Key? key}) : super(key: key);

  final TextEditingController recv = TextEditingController();
  final TextEditingController recvVerified = TextEditingController();
  final TextEditingController amount = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text("Enter the details:- ", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        const SizedBox(height: 20),
        TextFormField(
          controller: recv,
          decoration: const InputDecoration(labelText: "Receiver's name", border: OutlineInputBorder()),
        ),
        const SizedBox(height: 20),
        TextFormField(
          controller: recvVerified,
          decoration: const InputDecoration(labelText: "Receiver's verified name", border: OutlineInputBorder()),
        ),
        const SizedBox(height: 20),
        TextFormField(
          controller: amount,
          decoration: const InputDecoration(labelText: "Amount", border: OutlineInputBorder()),
        ),
        const SizedBox(height: 30),
        ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PayTM(
                            amount: amount.text,
                            recv: recv.text,
                            recvVerified: recvVerified.text,
                          )));
            },
            child: const Text("Pay"))
      ],
    );
  }
}
