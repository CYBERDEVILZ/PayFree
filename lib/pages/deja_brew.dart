import "package:flutter/material.dart";
import 'package:lottie/lottie.dart';

class DejaBrew extends StatefulWidget {
  const DejaBrew({Key? key, required this.amount}) : super(key: key);

  final String recv = "Ompal Singh S O Dhoom Singh";
  final String recvVerified = "devaventerprises@okaxis";
  final String? amount;

  @override
  State<DejaBrew> createState() => _DejaBrewState();
}

class _DejaBrewState extends State<DejaBrew> {
  String monthExtractor(String a) {
    String yo = "null";
    switch (a) {
      case "01":
        yo = "Jan";
        break;
      case "02":
        yo = "Feb";
        break;
      case "03":
        yo = "Mar";
        break;
      case "04":
        yo = "Apr";
        break;
      case "05":
        yo = "May";
        break;
      case "06":
        yo = "Jun";
        break;
      case "07":
        yo = "Jul";
        break;
      case "08":
        yo = "Aug";
        break;
      case "09":
        yo = "Sep";
        break;
      case "10":
        yo = "Oct";
        break;
      case "11":
        yo = "Nov";
        break;
      case "12":
        yo = "Dec";
        break;
      default:
        yo = "null";
    }
    return yo;
  }

  String timeExtractor(String a) {
    String time = a.split(".")[0];
    List<String> timeArray = time.split(":");
    String hour = timeArray[0];
    String min = timeArray[1];

    int intHour = int.parse(hour);
    if (intHour > 12) {
      intHour = intHour - 12;
      String h = intHour.toString();
      if (h.length == 1) {
        h = "0$h";
      }
      return "$h:$min PM";
    } else {
      return "$hour:$min AM";
    }
  }

  @override
  Widget build(BuildContext context) {
    String date = DateTime.now().toString();
    List<String> dateArray = date.split("-");
    String day = dateArray[2].split(" ")[0];
    String time = dateArray[2].split(" ")[1];
    String month = monthExtractor(dateArray[1]);
    String? a;
    String? b;

    if (widget.recv.isNotEmpty) {
      a = widget.recv.split(" ")[0][0].toUpperCase();
      b = widget.recv.split(" ")[1][0].toUpperCase();
    }

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        foregroundColor: Colors.black,
        title: Image.asset("assets/paytm/titletransparent.png", scale: 1.2),
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.lightBlue[100]!.withOpacity(0.5), borderRadius: BorderRadius.circular(20)),
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
                              CircleAvatar(
                                  backgroundColor: Colors.lightBlue,
                                  foregroundColor: Colors.white,
                                  maxRadius: 30,
                                  child: Text(
                                    widget.recv.isEmpty ? "Null" : "$a$b",
                                    style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w500, letterSpacing: 2),
                                  )),
                              const SizedBox(width: 20),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      widget.recv.isEmpty ? "Null" : widget.recv,
                                      style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                                    ),
                                    const SizedBox(height: 10),
                                    widget.recvVerified.isEmpty
                                        ? Row(
                                            children: [const Text("UPI ID: Null"), Image.asset("assets/paytm/upi.png")],
                                          )
                                        : Row(
                                            children: [
                                              Text("UPI ID: ${widget.recvVerified}"),
                                              Image.asset(
                                                "assets/paytm/upi.png",
                                                height: 17,
                                              )
                                            ],
                                          ),
                                    const SizedBox(height: 30),
                                  ],
                                ),
                              ),
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
                              Lottie.asset('assets/paytm/done2.json', height: 65),
                            ],
                          ),
                          const SizedBox(height: 20),
                          Text("$day $month, ${timeExtractor(time)}"),
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
                                  child:
                                      const Text("Share", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15)),
                                  decoration:
                                      BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(50)),
                                ),
                                Container(
                                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                                  child:
                                      const Text("Repeat", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15)),
                                  decoration:
                                      BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(50)),
                                ),
                                Container(
                                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                                  child:
                                      const Text("Split", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15)),
                                  decoration:
                                      BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(50)),
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
            const SizedBox(height: 20),
            Image.asset("assets/paytm/bottomnav.png")
          ],
        ),
      ),
    );
  }
}
