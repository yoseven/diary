import 'package:flutter/material.dart';

class buildLabel extends StatefulWidget {
  const buildLabel({
    Key? key,
    required this.colors,
    required this.color
  }) : super(key: key);
  final List<Color> colors;
  final Color? color;

  @override
  State<buildLabel> createState() => buildLabelState();
}

class buildLabelState extends State<buildLabel> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 30,
        height: 30,
        decoration: ShapeDecoration(
          shape: CircleBorder(
            side: BorderSide(
              color: Color.fromARGB(15, 0, 0, 0),
            ),
          ),
          color:widget.color,
        ),
        child: Center(
            child: Container(
          alignment: Alignment.center,
          width: 18,
          height: 18,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                colors: widget.colors,
              )),
        )));
  }
}
