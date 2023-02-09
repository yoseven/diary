import 'package:flutter/material.dart';
import 'package:flutterdemo01/widget/option.dart';
import 'package:flutterdemo01/widget/Slidable01.dart';

class AddEntryPage extends StatefulWidget {
  const AddEntryPage({super.key});

  @override
  State<AddEntryPage> createState() => _AddEntryPageState();
}

class _AddEntryPageState extends State<AddEntryPage> {
  List<bool> isSelected1 = [true, false];
  List<bool> isSelected2 = [true, false, false, false];

  String? _groupValue;

  ValueChanged<String?> _valueChangedHandler() {
    return (value) => setState(() => _groupValue = value!);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
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
                "Add Entry",
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
                  children: <Widget>[
                    const Text("Multiplier"),
                    const Text("Non-Multiplier"),
                  ],
                  color: Colors.black54,
                  borderColor: const Color.fromARGB(15, 0, 0, 0),
                  fillColor: const Color.fromARGB(255, 60, 119, 236),
                  selectedColor: Colors.white,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(30),
                  ),
                  constraints:
                      const BoxConstraints(minHeight: 70, minWidth: 160),
                  onPressed: (int index) {
                    setState(() {
                      for (int buttonIndex = 0;
                          buttonIndex < isSelected1.length;
                          buttonIndex++) {
                        if (buttonIndex == index) {
                          isSelected1[buttonIndex] = true;
                        } else {
                          isSelected1[buttonIndex] = false;
                        }
                      }
                    });
                  },
                  isSelected: isSelected1,
                ),
              ),
              const SizedBox(height: 10),
              Container(
                height: 40,
                decoration: const BoxDecoration(
                    color: Color(0x30cccccc),
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                child: ToggleButtons(
                  children: <Widget>[
                    const Text("Year"),
                    const Text("Month"),
                    const Text("Week"),
                    const Text("Since"),
                  ],
                  color: Colors.black54,
                  borderColor: const Color.fromARGB(15, 0, 0, 0),
                  fillColor: const Color.fromARGB(255, 60, 119, 236),
                  selectedColor: Colors.white,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(30),
                  ),
                  constraints:
                      const BoxConstraints(minHeight: 70, minWidth: 80),
                  onPressed: (int index) {
                    setState(() {
                      for (int buttonIndex = 0;
                          buttonIndex < isSelected2.length;
                          buttonIndex++) {
                        if (buttonIndex == index) {
                          isSelected2[buttonIndex] = true;
                        } else {
                          isSelected2[buttonIndex] = false;
                        }
                      }
                    });
                  },
                  isSelected: isSelected2,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              MyRadioOption<String>(
                value: '1',
                groupValue: _groupValue,
                onChanged: _valueChangedHandler(),
          
              ),
            
              const SizedBox(height: 20),
              Container(
                height: 40,
                width: 320,
                child: OutlinedButton.icon(
                  icon: const Icon(
                    Icons.note_add_rounded,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        const Color.fromARGB(255, 60, 119, 236),
                      ),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                      )),
                  label: const Text(
                    "Create",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    ));
  }
}
