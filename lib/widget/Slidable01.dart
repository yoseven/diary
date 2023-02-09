import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutterdemo01/myIcon.dart';

class CheckboxSlidable extends StatefulWidget {
  CheckboxSlidable({Key? key, required this.colors, required this.checkColor})
      : super(key: key);

  final List<Color> colors;
  final Color? checkColor;
  bool _checkboxValue = false;
  @override
  _CheckboxSlidableState createState() => _CheckboxSlidableState();
}

class _CheckboxSlidableState extends State<CheckboxSlidable> {
  bool _checkboxValue = false;

  @override
  Widget build(BuildContext context) {
    return Slidable(
      key: const ValueKey(1),
      endActionPane: ActionPane(
        motion: const ScrollMotion(),
        dismissible: DismissiblePane(onDismissed: () {}),
        children: const [
          SlidableAction(
            onPressed: doNothing,
            backgroundColor: Color.fromARGB(255, 75, 156, 255),
            foregroundColor: Colors.white,
            icon: Icons.drive_file_rename_outline_outlined,
          ),
          SlidableAction(
            onPressed: doNothing,
            backgroundColor: Color.fromARGB(255, 234, 59, 59),
            foregroundColor: Colors.white,
            icon: Icons.delete_forever_outlined,
          ),
        ],
      ),
      child: Align(
          child: Container(
        width: 330,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: LinearGradient(colors: widget.colors)),
        child: ListTile(
            dense: true,
            horizontalTitleGap: 5,
            leading: Checkbox(
              value: _checkboxValue,
              activeColor: Colors.white,
              checkColor: widget.checkColor,
              onChanged: (bool? value) {
                setState(() {
                  _checkboxValue = value!;
                });
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            title: RichText(
                text: TextSpan(
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w500),
                    children: [
                  const TextSpan(text: "Brushteeth"),
                  WidgetSpan(
                      child: Container(
                    height: 13,
                    width: 23,
                    padding: const EdgeInsets.all(2),
                    margin: const EdgeInsets.fromLTRB(4, 0, 0, 0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2),
                        color: const Color.fromARGB(77, 255, 255, 255)),
                    child: const Text(
                      "Daily",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 8,
                          fontWeight: FontWeight.w700),
                    ),
                  )),
                  WidgetSpan(
                      child: Container(
                    height: 13,
                    width: 20,
                    padding: const EdgeInsets.all(2),
                    margin: const EdgeInsets.fromLTRB(4, 0, 0, 0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2),
                        color: const Color.fromARGB(77, 255, 255, 255)),
                    child: RichText(
                        text: const TextSpan(
                      children: [
                        WidgetSpan(
                            child: Icon(
                          Icons.data_saver_off_sharp,
                          color: Colors.white,
                          size: 10,
                        )),
                        TextSpan(
                            text: " 1",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 7,
                                fontWeight: FontWeight.w900))
                      ],
                    )),
                  )),
                ])),
            subtitle: RichText(
              text: const TextSpan(
                  style: TextStyle(color: Colors.white, fontSize: 8),
                  children: [
                    WidgetSpan(
                        child: Icon(
                      Icons.check_circle,
                      color: Colors.white,
                      size: 10,
                    )),
                    TextSpan(text: "2022/08/01-2022/08/06  "),
                    TextSpan(
                        text: "6   ",
                        style: TextStyle(color: Colors.white, fontSize: 11)),
                    WidgetSpan(
                        child: Icon(
                      myIcon.more,
                      color: Colors.white,
                      size: 8,
                    )),
                    TextSpan(text: "2022/08/20-NOW  "),
                    TextSpan(text: "3", style: TextStyle(fontSize: 20))
                  ]),
            )),
      )),
    );
  }
}

void doNothing(BuildContext context) {}
