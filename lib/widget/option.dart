import 'package:flutter/material.dart';
import 'package:flutterdemo01/widget/buildLabel.dart';

class MyRadioOption<T> extends StatelessWidget {
  const MyRadioOption(
      {Key? key,
      required this.value,
      required this.groupValue,
      required this.onChanged,
      })
      : super(key: key);
  final T value;
  final T? groupValue;
  final ValueChanged<T?> onChanged;

Widget _buildLabel0() {
    final bool isSelected = value == groupValue;

    return buildLabel(colors:
    [ Color.fromARGB(255, 253, 102, 67),
            Color.fromARGB(255, 227, 36, 81)]
     , color: isSelected ? Color.fromARGB(255, 60, 119, 236) : Colors.white, );
     }
Widget _buildLabel1() {
    final bool isSelected = value == groupValue;

    return buildLabel(colors:
    [ Color.fromARGB(255, 253, 151, 67),
            Color.fromARGB(255, 227, 90, 36) ]
     , color: isSelected ? Color.fromARGB(255, 60, 119, 236) : Colors.white, );
     }
Widget _buildLabel2() {
    final bool isSelected = value == groupValue;

    return buildLabel(colors:
    [  Color.fromARGB(255, 255, 163, 88),
            Color.fromARGB(255, 246, 148, 43) ]
     , color: isSelected ? Color.fromARGB(255, 60, 119, 236) : Colors.white, );
     }

     Widget _buildLabel3() {
    final bool isSelected = value == groupValue;

    return buildLabel(colors:
    [  Color.fromARGB(255, 255, 210, 76),
            Color.fromARGB(255, 255, 171, 62)]
     , color: isSelected ? Color.fromARGB(255, 60, 119, 236) : Colors.white, );
     }
     Widget _buildLabel4() {
    final bool isSelected = value == groupValue;

    return buildLabel(colors:
    [   Color.fromARGB(255, 157, 226, 100),
            Color.fromARGB(255, 41, 199, 178)]
     , color: isSelected ? Color.fromARGB(255, 60, 119, 236) : Colors.white, );
     }
      Widget _buildLabel5() {
    final bool isSelected = value == groupValue;

    return buildLabel(colors:
    [  Color.fromARGB(255, 53, 215, 177),
            Color.fromARGB(255, 47, 160, 231)]
     , color: isSelected ? Color.fromARGB(255, 60, 119, 236) : Colors.white, );
     }
Widget _buildLabel6() {
    final bool isSelected = value == groupValue;

    return buildLabel(colors:
    [   Color.fromARGB(255, 56, 182, 240),
            Color.fromARGB(255, 94, 113, 255)]
     , color: isSelected ? Color.fromARGB(255, 60, 119, 236) : Colors.white, );
     }
     Widget _buildLabel7() {
    final bool isSelected = value == groupValue;

    return buildLabel(colors:
    [  Color.fromARGB(255, 120, 131, 255),
            Color.fromARGB(255, 194, 91, 235)]
     , color: isSelected ? Color.fromARGB(255, 60, 119, 236) : Colors.white, );
     }
     


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      child: InkWell(
        onTap: () => onChanged(value),
        splashColor: Colors.cyan.withOpacity(0.5),
        child: Padding(
          padding: EdgeInsets.all(5),
          child: Row(
            children: [
              _buildLabel0(),
              const SizedBox(width: 10),
              _buildLabel1(),
               const SizedBox(width: 10),
              _buildLabel2(),
               const SizedBox(width: 10),
              _buildLabel3(),
               const SizedBox(width: 10),
              _buildLabel4(),
               const SizedBox(width: 10),
              _buildLabel5(),
               const SizedBox(width: 10),
              _buildLabel6(),
               const SizedBox(width: 10),
              _buildLabel7(),

            ],
          ),
        ),
      ),
    );
  }
}
