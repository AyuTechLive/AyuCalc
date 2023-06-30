import 'package:flutter/material.dart';

class Calci extends StatefulWidget {
  const Calci({super.key});

  @override
  State<Calci> createState() => _CalciState();
}

class _CalciState extends State<Calci> {
  String equation = "0";
  String result = "0";
  String expression = "";
  Color yellow = Color.fromARGB(255, 59, 255, 222);
  Color orange = const Color(0xfff143d59);
  Color blue = Colors.indigoAccent;

  calcbutn(String btntxt) {
    setState(() {});
  }

  Widget calcibutn(String btntxt, double btnhtg, Color btnclr) {
    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(100),
      ),
      child: Container(
        height: btnhtg * 90,
        decoration: BoxDecoration(
            color: btnclr, borderRadius: BorderRadius.circular(100)),
        child: MaterialButton(
          onPressed: () {},
          child: Text(
            btntxt,
            style: const TextStyle(fontSize: 30),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('AyuCalc'),
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          Container(
              alignment: Alignment.centerRight,
              padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
              child: Text(
                equation,
                style: const TextStyle(fontSize: 35, color: Colors.white),
              )),
          Container(
              alignment: Alignment.centerRight,
              padding: const EdgeInsets.fromLTRB(10, 30, 10, 0),
              child: Text(
                result,
                style: const TextStyle(fontSize: 35, color: Colors.white),
              )),
          const Expanded(
            child: Divider(
              thickness: 1,
              color: Colors.black,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.75,
                child: Table(
                  children: [
                    TableRow(children: [
                      calcibutn("C", 1, yellow),
                      calcibutn("Del", 1, yellow),
                      calcibutn("Div", 1, yellow),
                    ]),
                    TableRow(children: [
                      calcibutn("7", 1, yellow),
                      calcibutn("8", 1, yellow),
                      calcibutn("9", 1, yellow),
                    ]),
                    TableRow(children: [
                      calcibutn("4", 1, yellow),
                      calcibutn("5", 1, yellow),
                      calcibutn("6", 1, yellow),
                    ]),
                    TableRow(children: [
                      calcibutn("1", 1, yellow),
                      calcibutn("2", 1, yellow),
                      calcibutn("3", 1, yellow),
                    ]),
                    TableRow(children: [
                      calcibutn(".", 1, yellow),
                      calcibutn("0", 1, yellow),
                      calcibutn("00", 1, yellow),
                    ])
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.25,
                child: Table(
                  children: [
                    TableRow(children: [
                      calcibutn("x", 1, yellow),
                    ]),
                    TableRow(children: [
                      calcibutn("-", 1, yellow),
                    ]),
                    TableRow(children: [
                      calcibutn("+", 1, yellow),
                    ]),
                    TableRow(children: [
                      calcibutn("=", 2, blue),
                    ])
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
