import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class SampleLinearPage extends StatelessWidget {
  const SampleLinearPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: LinearPercentIndicator(
        width: MediaQuery.of(context).size.width - 30,
        lineHeight: 5.0,
        animationDuration: 3000,
        percent: 0.7291,
        animateFromLastPercent: true,
        linearGradient: const LinearGradient(
          colors: <Color>[
            Color.fromARGB(255, 252, 234, 78),
            Color.fromARGB(255, 241, 117, 56),
            Color.fromARGB(255, 181, 73, 197),
            Color.fromARGB(255, 121, 65, 190),
          ],
        ),
        backgroundColor: const Color.fromARGB(25, 0, 0, 0),
        barRadius: const Radius.elliptical(10, 10),
        // widgetIndicator: const RotatedBox(
        //     quarterTurns: 1,
        //     child: Icon(
        //       Icons.circle_outlined,
        //       size: 10,
        //     )),
      ),
    );
  }
}
