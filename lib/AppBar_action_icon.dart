import 'package:flutter/material.dart';

class Appbar_action_icon extends StatelessWidget {
  const Appbar_action_icon({super.key});

  // SnackBar massage
  SnackBarMassage(text, context) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          text,
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.green,
        behavior: SnackBarBehavior.floating,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter with me"),
        //titleSpacing: 30,
        centerTitle: true,
        toolbarOpacity: 1,
        toolbarHeight: 55,
        elevation: 20,
        backgroundColor: Colors.blueAccent,

        // set Action icons
        actions: [
          IconButton(
            onPressed: () {
              SnackBarMassage("welcom to search", context);
            },
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {
              SnackBarMassage('Alarm', context);
            },
            icon: Icon(Icons.access_alarm),
          ),
          IconButton(
            onPressed: () {
              SnackBarMassage('Setting', context);
            },
            icon: Icon(Icons.settings_applications),
          ),
        ],

        // leading
        // leading: IconButton(
        //   onPressed: () {
        //     SnackBarMassage("Welcom to Menu", context);
        //   },
        //   icon: Icon(Icons.menu_open),
        // ),
      ),

      floatingActionButton: FloatingActionButton(
        elevation: 2,
        child: Icon(Icons.camera_alt_outlined),
        onPressed: () {
          SnackBarMassage('This is Camera action', context);
        },
        backgroundColor: Colors.blueAccent,
        hoverColor: Colors.blueGrey,
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        selectedFontSize: 18,
        unselectedFontSize: 8,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.notification_add_sharp), label: 'Notification'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.read_more), label: 'Read more')
        ],
        onTap: (int index) {
          if (index == 0) {
            SnackBarMassage('See Notifications', context);
          }
          if (index == 1) {
            SnackBarMassage('Goto Home', context);
          }
          if (index == 2) {
            SnackBarMassage('Read  more', context);
          }
        },
      ),

      
      

      // body
      body: Center(
        child: Text("Hello"),
      ),
    );
  }
}
