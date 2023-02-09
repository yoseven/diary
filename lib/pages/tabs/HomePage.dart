import 'package:flutter/material.dart';
import 'package:flutterdemo01/widget/progressbar.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutterdemo01/widget/Slidable01.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

DateTime dt = DateTime.now();

class _HomePageState extends State<HomePage> {
  bool valuea = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      Container(
        height: 330,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(40),
              bottomRight: Radius.circular(40)),
        ),
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          const SizedBox(
            height: 40,
          ),
          const Text(
            "9:41 Tue 2022 Aug 23",
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.w900),
          ),
          const SizedBox(
            height: 20,
          ),
          const SampleLinearPage(),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Image.network(
                "http://m.qpic.cn/psc?/V12QneqA4atIMj/ruAMsa53pVQWN7FLK88i5o1OMmbHt2lfnvRLkoagR.LQnbRbaTnyX*2UrJr96DOP6lJBocdq.GRUQp.Sod6AwAAq2G5xSxyL3XsrXkQwudo!/b&bo=WQG6AFkBugADByI!&rf=viewer_4"),
          ),
        ]),
      ),
      Expanded(
          child: ListView(children: [
        CheckboxSlidable(
          checkColor: Color.fromARGB(255, 253, 102, 67),
          colors: const [
            Color.fromARGB(255, 253, 102, 67),
            Color.fromARGB(255, 227, 36, 81)
          ],
        ),
        SizedBox(
          height: 10,
        ),
        CheckboxSlidable(
          checkColor: Color.fromARGB(255, 253, 151, 67),
          colors: const [
            Color.fromARGB(255, 253, 151, 67),
            Color.fromARGB(255, 227, 90, 36)
          ],
        ),
        SizedBox(
          height: 10,
        ),
        CheckboxSlidable(
          checkColor: Color.fromARGB(255, 255, 163, 88),
          colors: const [
            Color.fromARGB(255, 255, 163, 88),
            Color.fromARGB(255, 246, 148, 43)
          ],
        ),
        SizedBox(
          height: 10,
        ),
        CheckboxSlidable(
          checkColor: Color.fromARGB(255, 255, 210, 76),
          colors: const [
            Color.fromARGB(255, 255, 210, 76),
            Color.fromARGB(255, 255, 171, 62)
          ],
        ),
        SizedBox(
          height: 10,
        ),
        CheckboxSlidable(
          checkColor: Color.fromARGB(255, 157, 226, 100),
          colors: const [
            Color.fromARGB(255, 157, 226, 100),
            Color.fromARGB(255, 41, 199, 178)
          ],
        ),
        SizedBox(
          height: 10,
        ),
        CheckboxSlidable(
          checkColor: Color.fromARGB(255, 53, 215, 177),
          colors: const [
            Color.fromARGB(255, 53, 215, 177),
            Color.fromARGB(255, 47, 160, 231)
          ],
        ),
        SizedBox(
          height: 10,
        ),
        CheckboxSlidable(
          checkColor: Color.fromARGB(255, 56, 182, 240),
          colors: const [
            Color.fromARGB(255, 56, 182, 240),
            Color.fromARGB(255, 94, 113, 255)
          ],
        ),
        
        SizedBox(
          height: 10,
        ),
        CheckboxSlidable(
          checkColor: Color.fromARGB(255, 120, 131, 255),
          colors: const [
            Color.fromARGB(255, 120, 131, 255),
            Color.fromARGB(255, 194, 91, 235)
          ],
        ),
      ]))
    ]));
  }
}

void doNothing(BuildContext context) {}
