import 'package:flutter/material.dart';
import 'package:pay_free/pages/googlepay.dart';
import 'package:pay_free/pages/paytm.dart';
import 'package:pay_free/widgets/custombutton.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Choose Payment Gateway',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text("Choose a payment gateway: ", style: TextStyle(fontSize: 35), textAlign: TextAlign.center),
          const SizedBox(height: 30),
          ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const PayTM()));
              },
              child: const Text("Paytm", style: TextStyle(fontSize: 30))),
          const SizedBox(height: 20),
          ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const GooglePay()));
              },
              child: const Text("Google Pay", style: TextStyle(fontSize: 30))),
          const SizedBox(height: 20),
          const CustomButton(),
        ],
      ),
    ));
  }
}
