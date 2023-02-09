import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';
import 'package:flutterdemo01/widget/Slidable.dart';


class AddReminderPage extends StatefulWidget {
  const AddReminderPage({super.key});

  @override
  State<AddReminderPage> createState() => _AddReminderPageState();
}

class _AddReminderPageState extends State<AddReminderPage> {
  List<bool> isSelected = [true, false, false, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      Container(
        height: 370,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(40),
              bottomRight: Radius.circular(40)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 40,
            ),
            const Text(
              "Add Reminder",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w900),
            ),
            const SizedBox(
              height: 25,
            ),
            const SizedBox(
              height: 40,
              width: 320,
              child: TextField(
                decoration: InputDecoration(
                  fillColor: Color(0x30cccccc),
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromARGB(15, 0, 0, 0)),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  hintText: 'Title',
                  hintStyle: (TextStyle(color: Colors.black12, fontSize: 17)),
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromARGB(37, 0, 0, 0)),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const SizedBox(
              height: 40,
              width: 320,
              child: TextField(
                decoration: InputDecoration(
                  fillColor: Color(0x30cccccc),
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromARGB(15, 0, 0, 0)),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  hintText: 'Content',
                  hintStyle: (TextStyle(color: Colors.black12, fontSize: 17)),
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromARGB(37, 0, 0, 0)),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                ),
              ),
            ),
            const SizedBox(height: 25),
            Container(
              height: 40,
              decoration: const BoxDecoration(
                  color: Color(0x30cccccc),
                  borderRadius: BorderRadius.all(Radius.circular(30))),
              child: ToggleButtons(
                children: const <Widget>[
                  Text("Year"),
                  Text("Month"),
                  Text("Week"),
                  Text("Since"),
                ],
                color: Colors.black54,
                borderColor: const Color.fromARGB(15, 0, 0, 0),
                fillColor: const Color.fromARGB(255, 60, 119, 236),
                selectedColor: Colors.white,
                borderRadius: const BorderRadius.all(
                  Radius.circular(30),
                ),
                constraints: const BoxConstraints(minHeight: 70, minWidth: 80),
                onPressed: (int index) {
                  setState(() {
                    for (int buttonIndex = 0;
                        buttonIndex < isSelected.length;
                        buttonIndex++) {
                      if (buttonIndex == index) {
                        isSelected[buttonIndex] = true;
                      } else {
                        isSelected[buttonIndex] = false;
                      }
                    }
                  });
                },
                isSelected: isSelected,
              ),
            ),
            const SizedBox(height: 10),
            Container(
                width: 320,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: const Color(0x30cccccc),
                    border:
                        Border.all(color: const Color.fromARGB(15, 0, 0, 0)),
                    borderRadius: const BorderRadius.all(Radius.circular(50))),
                height: 40,
                child: DropdownButton(
                    isExpanded: true,
                    icon: const Icon(
                      Icons.arrow_drop_down,
                      color: Colors.black,
                    ),
                    items: const [],
                    hint: const Text("02-11"),
                    style: const TextStyle(fontSize: 15, color: Colors.black),
                    underline: Container(height: 0),
                    onChanged: (value) {})),
            const SizedBox(height: 20),
            SizedBox(
              height: 40,
              width: 320,
              child: OutlinedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    const Color.fromARGB(255, 60, 119, 236),
                  ),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
                child: const Text(
                  "Add",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
      Expanded(
          child: ListView(
        children: const [
           slidable(),
          SizedBox(height: 10,),
          slidable(),
          SizedBox(height: 10,),
          slidable(),
          SizedBox(height: 10,),
          slidable(),
          SizedBox(height: 10,),
          slidable(),
          SizedBox(height: 10,),
          slidable(),
          SizedBox(height: 10,),
          slidable(),
          SizedBox(height: 10,),
          
        ],
      ))
    ]));
  }
}
