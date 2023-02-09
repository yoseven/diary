import 'package:flutter/material.dart';
import './tabs/AddEntryPage.dart';
import './tabs/AddReminderPage.dart';
import './tabs/HomePage.dart';
import './tabs/UserPage.dart';
import 'package:flutterdemo01/myIcon.dart';

class Tabs extends StatefulWidget {
  final int index;
  const Tabs({super.key, this.index = 0});

  @override
  State<Tabs> createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  late int _currentIndex;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _currentIndex = widget.index;
  }

  final List<Widget> _pages = const [
    HomePage(),
    AddEntryPage(),
    AddReminderPage(),
    UserPage(),
  ];
   Widget build(BuildContext context) {
    return Scaffold(
        extendBody: true,
        
        body: 
        _pages[_currentIndex],
        bottomNavigationBar:
         ClipRRect(
        borderRadius:const BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
        
          child:
            BottomNavigationBar(
          fixedColor:const Color.fromARGB(255, 60, 119, 236),  
          unselectedItemColor: Color.fromARGB(93, 45, 105, 183),
          iconSize:45,          
          currentIndex:_currentIndex,  
          type:BottomNavigationBarType.fixed,  
          showSelectedLabels: false,
          showUnselectedLabels: false,
          backgroundColor: const Color.fromARGB(235, 255, 255, 255),
          onTap:(index){
           setState(() {
             _currentIndex=index;
           });
          },
          
          items: const [
             BottomNavigationBarItem(
              icon:
              // Padding(padding: EdgeInsets.fromLTRB(60, 10, 16, 10),child: 
              Icon(myIcon.home,size: 35,),label: "",
            ),
            BottomNavigationBarItem(
              icon:
              // Padding(padding: EdgeInsets.fromLTRB(28, 10, 10, 10),child:
              Icon(Icons.add_box_rounded,size: 35,),label: ""),
            BottomNavigationBarItem(
              icon:
              //  Padding( padding: EdgeInsets.fromLTRB(10, 10, 28, 10),child:
                Icon(Icons.event_note,size: 35,),label: ""
            ),
            BottomNavigationBarItem(
              icon: 
              // Padding(padding: EdgeInsets.fromLTRB(0, 10, 60, 10),child:
              Icon(Icons.account_box,size: 35,),label: ""
            ),
           
          ]),
          )
          );

  }
}
