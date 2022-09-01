import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //Flags to change the color
  bool cronometro = false;
  bool persona = false;
  bool tel = false;
  bool cel = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(border: Border.all(color: Colors.black)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.account_circle, size: 50),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Flutter McFlutter",
                      style: TextStyle(fontSize: 25),
                    ),
                    Text(
                      "Experenced App Developper",
                      textAlign: TextAlign.left,
                    )
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [Text("123 Main Street"), Text("(415) 555-0198")],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                  onPressed: () {
                    snackBar("Únete a un club con otras personas");
                    persona = !persona;
                  },
                  icon: Icon(
                    Icons.accessibility_new_outlined,
                    color: persona ? Colors.indigoAccent : Colors.black,
                  )),
              IconButton(
                  onPressed: () {
                    snackBar("Cuenta regresiva para el evento: 31 días");
                    cronometro = !cronometro;
                  },
                  icon: Icon(
                    Icons.timer,
                    color: cronometro ? Colors.indigoAccent : Colors.black,
                  )),
              IconButton(
                  onPressed: () {
                    snackBar("Llama al número 4155550198");
                    tel = !tel;
                  },
                  icon: Icon(
                    Icons.phone_android,
                    color: tel ? Colors.indigoAccent : Colors.black,
                  )),
              IconButton(
                  onPressed: () {
                    snackBar("Llama al celular 3317865113");
                    cel = !cel;
                  },
                  icon: Icon(
                    Icons.phone_android_rounded,
                    color: cel ? Colors.indigoAccent : Colors.black,
                  ))
            ],
          ),
        ],
      ),
    );
  }

  ScaffoldFeatureController<SnackBar, SnackBarClosedReason> snackBar(
      String texto) {
    setState(() {});
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(texto),duration: const Duration(milliseconds: 700),));
  }
}
