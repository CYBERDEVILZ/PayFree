import "package:flutter/material.dart";
import 'package:audioplayers/audioplayers.dart';

class PayTM extends StatefulWidget {
  const PayTM({Key? key, required this.recv, required this.recvVerified, required this.amount}) : super(key: key);

  final String? recv;
  final String? recvVerified;
  final String? amount;

  @override
  State<PayTM> createState() => _PayTMState();
}

class _PayTMState extends State<PayTM> {
  final player = AudioCache(prefix: "assets/paytm/");

  @override
  void initState() {
    super.initState();
    player.play("paytm.mp3");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        foregroundColor: Colors.black,
        title: Image.asset("assets/paytm/titletransparent.png", scale: 1.2),
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
      ),
      body: Container(
          width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.all(10),
          decoration:
              BoxDecoration(color: Colors.lightBlue[100]!.withOpacity(0.5), borderRadius: BorderRadius.circular(20)),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const CircleAvatar(maxRadius: 30),
                        const SizedBox(width: 20),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                widget.recv!.isEmpty ? "Null" : widget.recv!,
                                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                              const SizedBox(height: 10),
                              widget.recvVerified!.isEmpty
                                  ? const Text("Verified Name: Null")
                                  : Text("Verified Name: ${widget.recvVerified}"),
                              const SizedBox(height: 30),
                            ],
                          ),
                        ),
                        const SizedBox(width: 20),
                        Container(
                            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                            child: const Text("320", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16)),
                            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(50)))
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        widget.amount!.isEmpty
                            ? const Text(
                                "\u20b9 Null",
                                style: TextStyle(fontWeight: FontWeight.bold),
                                textScaleFactor: 3.5,
                              )
                            : Text(
                                "\u20b9 ${widget.amount}",
                                style: const TextStyle(fontWeight: FontWeight.bold),
                                textScaleFactor: 3.5,
                              ),
                        const Icon(
                          Icons.done,
                          size: 50,
                        )
                      ],
                    ),
                    const SizedBox(height: 20),
                    const Text("01 Apr, 05:49 PM"),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          "UPI Ref No. XX 4225",
                          style: TextStyle(color: Colors.lightBlue),
                        ),
                        Icon(
                          Icons.keyboard_arrow_down,
                          color: Colors.lightBlue,
                        )
                      ],
                    ),
                    const SizedBox(height: 30),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                            child: const Text("Share", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15)),
                            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(50)),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                            child: const Text("Repeat", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15)),
                            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(50)),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                            child: const Text("Split", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15)),
                            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(50)),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                color: Colors.lightBlue,
                height: 5,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                color: Colors.indigo,
                height: 5,
              ),
            ],
          )),
    );
  }
}
