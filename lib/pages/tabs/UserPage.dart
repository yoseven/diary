import 'package:get/get.dart';
import 'package:flutter/material.dart';

class UserPage extends StatefulWidget {
  const UserPage({super.key});

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
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
              const SizedBox(height: 10),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 60, 0, 0),
                alignment: Alignment.center,
                width: 90,
                height: 90,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255),
                    border: Border.all(
                        color: Color.fromARGB(255, 255, 255, 255), width: 3),
                    borderRadius: BorderRadius.circular(100),
                    image: const DecorationImage(
                        image: NetworkImage(
                            "http://m.qpic.cn/psc?/V12QneqA4atIMj/ruAMsa53pVQWN7FLK88i5olTQ*pw8h17rtYmrgHpBcWcXznjuWn1lDx.os6O1Nwt9GoqYKCmTh1PUCVwszphH2oYQxxeTcwFOfJ25eSYs.s!/b&bo=kANdBpADXQYBByA!&rf=viewer_4"),
                        fit: BoxFit.cover)),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text("Charname",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                  )),
              const SizedBox(
                height: 30,
              ),
   
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  RichText(
                      text: const TextSpan(
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w100),
                          children: [
                        TextSpan(
                            text: "   ·",
                            style: TextStyle(
                                fontWeight: FontWeight.w900, fontSize: 15)),
                        TextSpan(text: " You have installed diaryApp for"),
                        TextSpan(
                            text: " 143 ",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w900)),
                        TextSpan(text: "days"),
                      ])),
                ],
              ),
              SizedBox(
                height: 25,
              ),
               Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  RichText(
                      text: const TextSpan(
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w100),
                          children: [
                        TextSpan(
                            text: "   ·",
                            style: TextStyle(
                                fontWeight: FontWeight.w900, fontSize: 15)),
                        TextSpan(text: " You opened diaryApp In"),
                        TextSpan(
                            text: " 100 ",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w900)),
                        TextSpan(text: "days"),
                      ])),
                      
                ],
              ),
                SizedBox(
                height: 25,
              ),
               Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  RichText(
                      text: const TextSpan(
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w100),
                          children: [
                        TextSpan(
                            text: "   ·",
                            style: TextStyle(
                                fontWeight: FontWeight.w900, fontSize: 15)),
                        TextSpan(text: " Your historical best streak for open"),
                       
                      ])),
                      
                ],
              ),
              
               Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  RichText(
                      text: const TextSpan(
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w100),
                          children: [
                       
                        TextSpan(text: "      diaryApp is"),
                        TextSpan(
                            text: " 98 ",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w900)),
                        TextSpan(text: "days"),
                      ])),
                      
                ],
              ),
              SizedBox(
                height: 25,
              ),
               Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  RichText(
                      text: const TextSpan(
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w100),
                          children: [
                        TextSpan(
                            text: "   ·",
                            style: TextStyle(
                                fontWeight: FontWeight.w900, fontSize: 15)),
                        TextSpan(text: " Your current streak for open diaryApp"),
                       
                      ])),
                      
                ],
              ),
              
               Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  RichText(
                      text: const TextSpan(
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w100),
                          children: [
                       
                        TextSpan(text: "      is"),
                        TextSpan(
                            text: " 70 ",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w900)),
                        TextSpan(text: "days"),
                      ])),
                      
                ],
              ),
              const SizedBox(
                height: 170,
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
                        Icons.output_sharp,
                        color: Colors.black,
                      ),
                      label: const Text(
                        "Logout",
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
                        Get.toNamed("/login");
                      },
                    ),
                  )),
                ],
              ),
            ],
          )),
    );
  }
}
