import 'package:flutter/material.dart';
import 'package:pay_free/pages/military_mess.dart';

import '../pages/back_mess.dart';

class EnterAmount extends StatelessWidget {
  EnterAmount({Key? key, required this.cafeType}) : super(key: key);
  final String cafeType;

  final TextEditingController amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Amount",
              style: TextStyle(fontSize: 40),
            ),
            const SizedBox(height: 20),
            TextFormField(
              controller: amountController,
              style: const TextStyle(fontSize: 30, fontWeight: FontWeight.w300),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  if (cafeType == "Mil") {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MilitaryMess(recv: "Subash Chand", amount: amountController.text)));
                  }
                  if (cafeType == "Bac") {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => BackMess(amount: amountController.text)));
                  }
                },
                child: Text("Pay"))
          ],
        ),
      )),
    );
  }
}
