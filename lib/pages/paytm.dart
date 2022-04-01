import "package:flutter/material.dart";

class PayTM extends StatelessWidget {
  const PayTM({Key? key}) : super(key: key);

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
                            children: const [
                              Text(
                                "Cook House Amity University",
                                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                              SizedBox(height: 10),
                              Text("Verified Name: Cook House"),
                              SizedBox(height: 30),
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
                      children: const [
                        Text(
                          "\u20b9 999",
                          style: TextStyle(fontWeight: FontWeight.bold),
                          textScaleFactor: 3.5,
                        ),
                        Icon(
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
