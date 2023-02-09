import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class slidable extends StatelessWidget {
  const slidable({super.key});

  @override
  Widget build(BuildContext context) {
    return Slidable(
            // Specify a key if the Slidable is dismissible.
            key: const ValueKey(1),

            // The start action pane is the one at the left or the top side.

            // The end action pane is the one at the right or the bottom side.
            endActionPane: ActionPane(
              motion: const ScrollMotion(),
              dismissible: DismissiblePane(onDismissed: () {}),
              children: const [
                SlidableAction(
                  // An action can be bigger than the others.

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
           
            // The child of the Slidable is what the user sees when the
            // component is not dragged.
            child: Align(
                child: SizedBox(
              width: 320,
              child: ListTile(
                dense: true,
                horizontalTitleGap: 5,
                leading: const Icon(
                  Icons.circle_notifications,
                  color: Color.fromARGB(255, 60, 119, 236),
                  size: 35,
                ),
                tileColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: const BorderSide(color: Color.fromARGB(15, 0, 0, 0))),
                title: const Text(
                  'How Many Days Since Twenty First Century',
                  style: TextStyle(fontSize: 11, fontWeight: FontWeight.w900),
                ),
                subtitle: const Text("○ 8271 days since|2000-01-01",
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w900,
                      color: Color.fromARGB(255, 75, 156, 255),
                    )),
              ),
            )),
          );
  }
}
void doNothing(BuildContext context) {}