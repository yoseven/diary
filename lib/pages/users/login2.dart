import 'package:flutter/material.dart';
import 'package:flutterdemo01/myIcon.dart';
import 'package:get/get.dart';

class Login2Page extends StatefulWidget {
  const Login2Page({super.key});

  @override
  State<Login2Page> createState() => _Login2PageState();
}

class _Login2PageState extends State<Login2Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
             colors: [
              Color.fromARGB(255, 39, 49, 238),
              Color.fromARGB(146, 45, 209, 242),
              Color.fromARGB(0, 118, 244, 255)
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          )),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Padding(padding: EdgeInsets.fromLTRB(3, 100, 3, 0)),
              const Text('''Time Is Your Most
Valuable Asset-
Til Immortality''',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 38,
                    fontWeight: FontWeight.w900,
                  )),
              const SizedBox(
                height: 330,
              ),
              const Text(
                "Get Started",
                style: TextStyle(
                    color: Color.fromARGB(205, 0, 0, 0),
                    fontSize: 12,
                    fontWeight: FontWeight.w600),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                      child: Container(
                    height: 45,
                    margin: const EdgeInsets.all(20),
                    child: OutlinedButton.icon(
                      icon: const Icon(
                        myIcon.github,
                        color: Colors.black,
                      ),
                      label: const Text(
                        "Login with Github",
                        style: TextStyle(fontWeight: FontWeight.w900),
                      ),
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.white),
                          foregroundColor:
                              MaterialStateProperty.all(Colors.black),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30)))),
                      onPressed: () {
                        Get.toNamed("/");
                      },
                    ),
                  )),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                      child: Container(
                    height: 45,
                    margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: OutlinedButton.icon(
                      icon: const Icon(
                        myIcon.google,
                        color: Colors.black,
                      ),
                      label: const Text(
                        "Login with Google",
                        style: TextStyle(fontWeight: FontWeight.w900),
                      ),
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.white),
                          foregroundColor:
                              MaterialStateProperty.all(Colors.black),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30)),
                          )),
                      onPressed: () {
                        Get.toNamed("/");
                      },
                    ),
                  )),
                ],
              )
            ],
          )),
    );
  }
}
