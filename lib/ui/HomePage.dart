// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int increment = 1;
  String zikrNomi = "Subhan Alloh";
  int jami = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Zikrlar sanog'i"),
        backgroundColor: Colors.green[900],
        elevation: 0,
        actions: [
          IconButton(
              onPressed: () {
                increment = 1;
                setState(() {
                  if (increment == 1) {
                    changeZikrName("Subhan Alloh");
                  }
                  if (increment == 34) {
                    changeZikrName("Alhamdullilah");
                  } else if (increment == 67) {
                    changeZikrName("Allohu Akbar");
                  } else if (increment == 100) {
                    zikrNomi = zikrNomi;
                  }
                  jami = 1;
                });
              },
              icon: const Icon(
                Icons.refresh_outlined,
                size: 30,
              )),
        ],
      ),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.3,
            width: MediaQuery.of(context).size.width * 1,
            decoration: BoxDecoration(color: Colors.green[800]),
            child: Row(
              children: [
                const SizedBox(
                  width: 40,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 100),
                  child: Column(
                    children: [
                      Text(
                        zikrNomi,
                        style: const TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 60,
                        width: 10,
                      ),
                      Row(
                        children: [
                          Text("Jami: $jami",
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold)),
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Container(
                    height: 150,
                    width: 140,
                    decoration: BoxDecoration(
                      color: Colors.green[900],
                      borderRadius: BorderRadius.circular(700),
                    ),
                    child: Center(
                      child: Text(
                        //increment == 33 ? increment = 1 : increment
                        "$increment/33",
                        style: TextStyle(fontSize: 40, color: Colors.lime[200]),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10,),
          Container(
            height: MediaQuery.of(context).size.height * 0.564,
            width: MediaQuery.of(context).size.width * 1,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/8.jpg"),
                    alignment: Alignment.bottomCenter)),
            child: Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.only(bottom: 150),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    incrementCounter();
                    if (increment == 1) {
                      changeZikrName("Subhan Alloh");
                    }
                    if (increment == 34) {
                      changeZikrName("Alhamdullilah");
                    } else if (increment == 67) {
                      changeZikrName("Allohu Akbar");
                    } else if (increment == 100) {
                      zikrNomi = zikrNomi;
                    }
                    jami++;
                  });
                },
                style: ElevatedButton.styleFrom(
                    elevation: 0,
                    fixedSize: const Size.fromRadius(90),
                    backgroundColor: Colors.green[900],
                    shape: const CircleBorder()),
                child: Text(
                  "$increment",
                  style: TextStyle(fontSize: 90, color: Colors.lime[200]),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  void incrementCounter() {
    increment++;
    setState(() {});
    if (increment == 100) {
      increment = 1;
    }
  }

  void jami1() {
    increment++;
  }

  void changeZikrName(String yangi) {
    zikrNomi = yangi;
    setState(() {});
  }
}
